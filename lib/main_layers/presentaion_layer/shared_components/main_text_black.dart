import 'package:assiut_project/core/app_constants/app_colors.dart';
import 'package:flutter/material.dart';

class MainTextBlack extends StatelessWidget {
  final String? myText;
  final FontWeight? fontWeight;
  final double? fontSize;
  final TextDirection? textDirection;

  //  0xFF495057  700    20
  const MainTextBlack(
      {Key? key,
      this.myText,
      this.fontWeight,
      this.fontSize,
      this.textDirection})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      myText!,
      textAlign: TextAlign.end,
      textDirection: textDirection ?? TextDirection.ltr,
      style: TextStyle(
          fontFamily: 'Almarai',
          color: AppColors.kMainTextBlack,
          fontWeight: fontWeight ?? FontWeight.w700,
          fontSize: fontSize ?? 20),
    );
  }
}
