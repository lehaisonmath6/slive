import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class AuthorProfileScreen extends StatelessWidget {
  const AuthorProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      alignment: Alignment.center,
      child: Text(
        "Author Profile Screen",
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
