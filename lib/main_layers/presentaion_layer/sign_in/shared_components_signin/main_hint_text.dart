import 'package:assiut_project/core/app_constants/app_colors.dart';
import 'package:flutter/material.dart';

class MainHintText extends StatelessWidget {
  final String? myText;
  final Color? color;

  const MainHintText({Key? key, this.myText, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      myText!,
      style:  TextStyle(
          fontFamily: 'Almarai',
          color: color ?? AppColors.kSignInMainHintText,
          fontWeight: FontWeight.w700,
          fontSize: 12),
    );
  }
}
