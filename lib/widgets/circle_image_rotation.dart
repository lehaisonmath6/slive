import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/src/animation/animation_controller.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/src/widgets/ticker_provider.dart';

class CircleImageRotation extends StatefulWidget {
  const CircleImageRotation({super.key, required this.imageUrl});
  final String imageUrl;
  @override
  State<CircleImageRotation> createState() => _CircleImageRotationState();
}

class _CircleImageRotationState extends State<CircleImageRotation>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    _controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 5));
    _animation = Tween<double>(begin: 0, end: pi * 2).animate(_controller);
    _controller.forward();
    _controller.repeat();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return RotationTransition(
        turns: Tween(begin: 0.0, end: 1.0).animate(_controller),
        child: Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25.0),
              gradient: LinearGradient(colors: [
                Colors.grey[800]!,
                Colors.grey[900]!,
                Colors.grey[900]!,
                Colors.grey[800]!
              ], stops: [
                0.0,
                0.4,
                0.6,
                1.0
              ], begin: Alignment.bottomLeft, end: Alignment.topRight)),
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: CircleAvatar(
              radius: 40, backgroundImage: NetworkImage(widget.imageUrl)),
        ));
  }
}
