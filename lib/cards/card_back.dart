import 'package:flutter/material.dart';

class Back extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        height: 240,
        width: 170,
        decoration: BoxDecoration(
          color: Colors.black26,
          image: DecorationImage(
            image: AssetImage("assets/background/cardback.jpg"),
          ),
        ),
      ),
    );
  }
}
