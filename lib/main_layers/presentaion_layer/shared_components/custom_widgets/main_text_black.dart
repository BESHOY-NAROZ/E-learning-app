import 'package:assiut_project/core/app_constants/app_colors.dart';
import 'package:assiut_project/core/app_dimensions.dart';
import 'package:flutter/material.dart';

class MainTextBlack extends StatelessWidget {
  final String? myText;
  final FontWeight? fontWeight;
  final double? fontSize;
  final TextDirection? textDirection;
  final Color? color;

  //  0xFF495057  700    20
  const MainTextBlack(
      {Key? key, this.myText, this.fontWeight, this.fontSize, this.textDirection, this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context: context, designHeight: 778, designWidth: 360);

    return Text(
      myText!,
      textAlign: TextAlign.end,
      textDirection: textDirection ?? TextDirection.ltr,
      style: TextStyle(
          fontFamily: 'Almarai',
          color: color ?? AppColors.kMainTextBlack,
          fontWeight: fontWeight ?? FontWeight.w700,
          fontSize: fontSize ?? AppDimensions.defaultSize * 20),
    );
  }
}
