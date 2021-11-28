import 'package:flutter/material.dart';

class BarItemView extends StatelessWidget {
  const BarItemView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "ÜRÜNLER SAYFASI",
        style: TextStyle(fontSize: 35),
      ),
    );
  }
}
