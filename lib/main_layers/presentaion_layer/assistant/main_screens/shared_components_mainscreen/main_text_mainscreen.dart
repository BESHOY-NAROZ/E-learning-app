import 'package:assiut_project/core/app_constants/app_colors.dart';
import 'package:assiut_project/core/app_dimensions.dart';
import 'package:flutter/material.dart';

class MainTextMainScreen extends StatelessWidget {
  final String? myText;

  const MainTextMainScreen({super.key, this.myText});
  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context: context, designHeight: 778, designWidth: 360);

    return Text(
      myText!,
      textAlign: TextAlign.end,
      style: TextStyle(
          fontFamily: 'Almarai',
          color: AppColors.kForgetPasswordMainText,
          fontWeight: FontWeight.w700,
          fontSize: AppDimensions.defaultSize * 24),
    );
  }
}
