import 'package:assiut_project/core/app_constants/app_colors.dart';
import 'package:flutter/material.dart';

class MainHintText extends StatelessWidget {
  final String? myText;

  const MainHintText({Key? key, this.myText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      myText!,
      style: const TextStyle(
          fontFamily: 'Almarai',
          color: AppColors.kSignInMainHintText,
          fontWeight: FontWeight.w700,
          fontSize: 12),
    );
  }
}
