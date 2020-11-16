import 'dart:io';
import 'package:bmi_calculator/components/adaptative/adaptative_icon_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AdaptiveTextField extends StatelessWidget {

  final String hint;
  final TextEditingController controller;

  AdaptiveTextField({this.controller, this.hint});

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
        ? CupertinoTextField()
        : TextField(
            keyboardType: TextInputType.number,
            controller: controller,
            textAlign: TextAlign.center,
            decoration: InputDecoration(
              hintText: hint,
              filled: true,
              fillColor: Colors.grey[200],
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.0),
                borderSide: BorderSide.none,
              ),
              suffixIcon: AdaptativeIconButton(
                Platform.isIOS ? CupertinoIcons.clear : Icons.clear,
                () => controller.clear(),
              ),
            ),
          );

  }


}
