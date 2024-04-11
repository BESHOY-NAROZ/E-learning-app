import 'package:assiut_project/core/app_constants/app_colors.dart';
import 'package:flutter/material.dart';

class HintTextGroups extends StatelessWidget {
  final String ? myText;
  final FontWeight ? fontWeight;
  final double ? fontSize;
  const HintTextGroups({Key? key, this.myText, this.fontWeight, this.fontSize}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Text(myText!,
      textAlign: TextAlign.end,
      style:  TextStyle(
          fontFamily: 'Almarai',
          color: AppColors.kLoginEmailOrPhone,
          fontWeight: fontWeight,
          fontSize: fontSize),);
  }
}
