import 'package:assiut_project/core/app_constants/app_colors.dart';
import 'package:flutter/material.dart';

class MainTextBlue extends StatelessWidget{
  final String ? myText;

  const MainTextBlue({super.key, this.myText});
  @override
  Widget build(BuildContext context) {
    return Text(myText!,
        style: const TextStyle(
        fontFamily: 'Almarai',
        color: AppColors.kForgetPasswordMainText,
        fontWeight: FontWeight.w700,
        fontSize: 24),);
  }
}