import 'package:assiut_project/core/app_constants/app_colors.dart';
import 'package:flutter/material.dart';

class MainTextGrey extends StatelessWidget {
  final String? myText;
  final FontWeight? fontWeight;
  final double? fontSize;
  final TextDirection? textDirection;
  final Color? color;
  final TextAlign? textAlign;

  // 700, 16, 0xff868E96
  const MainTextGrey(
      {Key? key,
      this.myText,
      this.fontWeight,
      this.fontSize,
      this.textDirection,
      this.color,
      this.textAlign})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      myText!,
      textAlign: textAlign ?? TextAlign.end,
      textDirection: textDirection ?? TextDirection.ltr,
      style: TextStyle(
          fontFamily: 'Almarai',
          color: color ?? AppColors.kLoginEmailOrPhone,
          fontWeight: fontWeight ?? FontWeight.w700,
          fontSize: fontSize ?? 16),
    );
  }
}
