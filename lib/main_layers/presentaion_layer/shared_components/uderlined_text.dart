import 'package:assiut_project/core/app_constants/app_colors.dart';
import 'package:flutter/material.dart';

class CustomUnderLinedText extends StatelessWidget {
  final String ? myText;
  final double ? fontSize;
  const CustomUnderLinedText({
    super.key, this.myText, this.fontSize,
  });

  @override
  Widget build(BuildContext context) {
    return  Text(
      myText!,
      style:  TextStyle(
        shadows: const [
          Shadow(
              color: AppColors.kLoginCreateAccount,
              offset: Offset(0, -3))
        ],
        fontFamily: 'Almarai',
        color: Colors.transparent,
        decoration: TextDecoration.underline,
        decorationColor: AppColors.kLoginCreateAccount,
        decorationThickness: 2,
        fontWeight: FontWeight.w700,
        fontSize: fontSize ?? 14,
        decorationStyle: TextDecorationStyle.solid,
      ),
    );
  }
}