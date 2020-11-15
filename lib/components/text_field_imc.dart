import 'package:flutter/material.dart';

class TextFieldImc extends StatelessWidget {

  TextEditingController controller;
  String hint;

  TextFieldImc(this.controller, this.hint);

  @override
  Widget build(BuildContext context) {
    return TextField(
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
        suffixIcon: IconButton(
          onPressed: () => controller.clear(),
          icon: Icon(Icons.clear),
        ),
      ),
    );
  }
}
