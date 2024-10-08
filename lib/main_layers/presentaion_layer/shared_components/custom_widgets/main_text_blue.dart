import 'package:assiut_project/core/app_constants/app_colors.dart';
import 'package:assiut_project/core/app_dimensions.dart';
import 'package:flutter/material.dart';

class MainTextBlue extends StatelessWidget {
  final String? myText;
  final FontWeight? fontWeight;
  final double? fontSize;
  final Color? color;
  final TextDirection? textDirection;

  //   0xff4A88C5     700     24
  const MainTextBlue(
      {super.key, this.myText, this.fontWeight, this.fontSize, this.color, this.textDirection});
  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context: context, designHeight: 778, designWidth: 360);

    return Text(
      myText!,
      textDirection: textDirection ?? TextDirection.ltr,
      style: TextStyle(
          fontFamily: 'Almarai',
          color: color ?? AppColors.kForgetPasswordMainText,
          fontWeight: fontWeight ?? FontWeight.w700,
          fontSize: fontSize ?? AppDimensions.defaultSize * 24),
    );
  }
}
