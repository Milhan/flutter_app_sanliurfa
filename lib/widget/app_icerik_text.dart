import 'package:flutter/material.dart';

class ApppIcerikText extends StatelessWidget {
  final String text;
  final Color renk;
  double size;

  ApppIcerikText(
      {required this.text, this.renk = Colors.black, this.size = 20});

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: TextStyle(
          color: renk,
          fontSize: size,
          fontWeight: FontWeight.bold,
          backgroundColor: Colors.white,
        ));
  }
}
