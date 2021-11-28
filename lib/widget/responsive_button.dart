import 'package:flutter/material.dart';
import 'package:flutter_app_sanliurfa/core/colors.dart';

class ResponsiveButton extends StatelessWidget {
  bool isResponsive;
  double? width;

  ResponsiveButton({this.isResponsive = false, this.width});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppColors.mainColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.arrow_right_alt_outlined,
            size: 30,
            color: Colors.white,
          )
        ],
      ),
    );
  }
}
