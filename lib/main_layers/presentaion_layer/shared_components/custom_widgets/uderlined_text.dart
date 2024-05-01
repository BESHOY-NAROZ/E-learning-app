import 'package:assiut_project/core/app_constants/app_colors.dart';
import 'package:assiut_project/core/app_dimensions.dart';
import 'package:flutter/material.dart';

class CustomUnderLinedText extends StatelessWidget {
  final String? myText;
  final double? fontSize;
  final void Function()? onTap;
  const CustomUnderLinedText({
    super.key,
    this.myText,
    this.fontSize,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context: context, designHeight: 778, designWidth: 360);

    return InkWell(
      onTap: onTap,
      child: Text(
        myText!,
        style: TextStyle(
          shadows: const [Shadow(color: AppColors.kLoginCreateAccount, offset: Offset(0, -3))],
          fontFamily: 'Almarai',
          color: Colors.transparent,
          decoration: TextDecoration.underline,
          decorationColor: AppColors.kLoginCreateAccount,
          decorationThickness: 2,
          fontWeight: FontWeight.w700,
          fontSize: fontSize ?? AppDimensions.defaultSize * 14,
          decorationStyle: TextDecorationStyle.solid,
        ),
      ),
    );
  }
}
