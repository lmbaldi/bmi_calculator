import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AdaptativeIconButton extends StatelessWidget {
  final IconData icon;
  final Function fn;

  AdaptativeIconButton(this.icon, this.fn);

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
        ? GestureDetector(child: Icon(icon), onTap: fn)
        : IconButton(icon: Icon(icon), onPressed: fn);
  }
}
