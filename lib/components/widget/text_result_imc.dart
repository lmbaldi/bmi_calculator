import 'package:flutter/material.dart';

class TextResultImc extends StatelessWidget {

  String textResult;
  double sizeText;

  TextResultImc(this.textResult, this.sizeText);

  @override
  Widget build(BuildContext context) {

    return Container(
      width: double.infinity,
      child: Text(
        textResult,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: sizeText,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
