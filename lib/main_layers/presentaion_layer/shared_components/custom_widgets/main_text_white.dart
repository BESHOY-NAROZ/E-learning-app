import 'package:assiut_project/core/app_constants/app_colors.dart';
import 'package:assiut_project/core/app_dimensions.dart';
import 'package:flutter/material.dart';

class MainTextWhite extends StatelessWidget {
  final String? myText;
  final FontWeight? fontWeight;
  final double? fontSize;
  final TextDirection? textDirection;
  const MainTextWhite({Key? key, this.myText, this.fontWeight, this.fontSize, this.textDirection})
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
          color: AppColors.kMainTextWhite,
          fontWeight: fontWeight,
          fontSize: fontSize),
    );
  }
}
