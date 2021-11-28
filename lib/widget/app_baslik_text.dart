import 'package:flutter/material.dart';

class AppBaslikText extends StatelessWidget {
  final String text;
  final Color renk;
  double size;

  AppBaslikText({required this.text, this.renk = Colors.black, this.size = 30});

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
