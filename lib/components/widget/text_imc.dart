import 'package:flutter/material.dart';

class TextImc extends StatelessWidget {
  String text;
  Color color;

  TextImc(this.text, {this.color});

  @override
  Widget build(BuildContext context) {
    return  Text(
      text,
      style: TextStyle(
        fontSize: 18.0,
        color: color,
      ),
    );
  }
}
