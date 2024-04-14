import 'package:assiut_project/core/app_constants/app_colors.dart';
import 'package:flutter/material.dart';

class MainTextGreen extends StatelessWidget {
  final String ? myText;
  final FontWeight ? fontWeight;
  final double ? fontSize;
  final TextDirection ? textDirection;
  final Color ? color;

  const MainTextGreen({Key? key, this.myText, this.fontWeight, this.fontSize,
    this.textDirection, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Text(myText!,
      textAlign: TextAlign.end,
      textDirection: textDirection ?? TextDirection.ltr,
      style:  TextStyle(
          fontFamily: 'Almarai',
          color: color ?? AppColors.kMainTextGreen,
          fontWeight: fontWeight ?? FontWeight.w700,
          fontSize: fontSize ?? 16),);
  }
}
