import 'package:assiut_project/core/app_constants/app_colors.dart';
import 'package:flutter/material.dart';

class MainTextBlue extends StatelessWidget{
  final String ? myText;
  final FontWeight ? fontWeight;
  final double ? fontSize;
  final Color ? color;

  const MainTextBlue({super.key, this.myText, this.fontWeight, this.fontSize, this.color});
  @override
  Widget build(BuildContext context) {
    return Text(myText!,
        style:  TextStyle(
        fontFamily: 'Almarai',
        color: color ?? AppColors.kForgetPasswordMainText,
        fontWeight: fontWeight ??FontWeight.w700,
        fontSize: fontSize ?? 24),);
  }
}