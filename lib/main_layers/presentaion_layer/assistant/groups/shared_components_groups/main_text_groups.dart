import 'package:assiut_project/core/app_constants/app_colors.dart';
import 'package:assiut_project/core/app_dimensions.dart';
import 'package:flutter/material.dart';

class MainTextGroups extends StatelessWidget {
  final String? myText;

  const MainTextGroups({super.key, this.myText});
  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context: context, designHeight: 778, designWidth: 360);

    return Text(
      myText!,
      textAlign: TextAlign.end,
      style: TextStyle(
          fontFamily: 'Almarai',
          color: AppColors.kMainTextGroups,
          fontWeight: FontWeight.w700,
          fontSize: AppDimensions.defaultSize * 20),
    );
  }
}
