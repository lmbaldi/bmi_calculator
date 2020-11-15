import 'package:flutter/material.dart';

class TextImc extends StatelessWidget {
  String text;

  TextImc(this.text);

  @override
  Widget build(BuildContext context) {
    return  Text(
      text,
      style: TextStyle(
        fontSize: 18.0,
      ),
    );
  }
}
