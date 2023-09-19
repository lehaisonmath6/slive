import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Heart Animation',
      home: Scaffold(
        body: HeartAnimation(),
      ),
    );
  }
}

class HeartAnimation extends StatefulWidget {
  @override
  _HeartAnimationState createState() => _HeartAnimationState();
}

class _HeartAnimationState extends State<HeartAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _sizeAnimation;
  late Animation<double> _opacityAnimation;
  late Offset _position;

  @override
  void initState() {
    super.initState();

    // Create the animation controller and set its duration
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 500),
    );
    _position = Offset.zero;
    // Create the size and opacity animations
    _sizeAnimation = Tween<double>(begin: 50, end: 100).animate(_controller);
    _opacityAnimation = Tween<double>(begin: 1, end: 0).animate(_controller);

    // Add a listener to the animation controller to rebuild the widget tree
    // every time the animation value changes
    _controller.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    // Dispose the animation controller when the widget is removed from the tree
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onPanUpdate: (details) {
        // Update the position of the heart icon when the user moves the mouse pointer
        setState(() {
          _position = details.localPosition;
        });
      },
      onTapDown: (details) {
        // Start the animation when the user taps the screen
        setState(() {
          _position = details.localPosition;
          _controller.forward(from: 0);
        });
      },
      child: Container(
        color: Colors.white,
        child: Stack(
          children: [
            if (_position != null)
              Positioned(
                left: _position.dx - _sizeAnimation.value / 2,
                top: _position.dy - _sizeAnimation.value / 2,
                child: Opacity(
                  opacity: _opacityAnimation.value,
                  child: Icon(
                    Icons.favorite,
                    color: Colors.red,
                    size: _sizeAnimation.value,
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
