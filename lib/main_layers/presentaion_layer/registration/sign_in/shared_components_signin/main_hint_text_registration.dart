import 'package:assiut_project/core/app_constants/app_colors.dart';
import 'package:flutter/material.dart';

class MainHintTextRegistration extends StatelessWidget {
  final String? myText;
  final Color? color;
  final TextAlign? textAlign;

  const MainHintTextRegistration({Key? key, this.myText, this.color, this.textAlign}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      myText!,
      textAlign: textAlign ,
      style:  TextStyle(
          fontFamily: 'Almarai',
          color: color ?? AppColors.kSignInMainHintText,
          fontWeight: FontWeight.w700,
          fontSize: 12),
    );
  }
}
