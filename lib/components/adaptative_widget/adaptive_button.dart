import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/components/text_imc.dart';

class AdaptiveButton extends StatelessWidget {
  final String label;
  final Function onPressed;
  final Color color;

  AdaptiveButton({this.label, this.onPressed, this.color});

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
        ? CupertinoButton(
            child: TextImc(label, color: Colors.white),
            onPressed: onPressed,
          )
        : RaisedButton(
            child: TextImc(label, color: Colors.white),
            onPressed: onPressed,
            color: color,
          );
  }
}
