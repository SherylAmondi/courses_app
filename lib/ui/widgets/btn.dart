import 'dart:ui';

import 'package:flutter/material.dart';

class Btn extends StatelessWidget {
  const Btn({Key? key, required this.text, required this.onPressed})
      : super(key: key);
  final String text;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
      ),
      style: TextButton.styleFrom(
        minimumSize: Size(double.infinity, 40),
        primary: Colors.white,
        backgroundColor: Color.fromRGBO(230, 88, 62, 1),
        padding: EdgeInsets.symmetric(horizontal: 16),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(5))),
      ),
    );
  }
}
