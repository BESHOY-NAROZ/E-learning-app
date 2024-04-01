import 'package:assiut_project/core/app_constants/app_colors.dart';
import 'package:assiut_project/core/app_dimensions.dart';
import 'package:flutter/material.dart';

class CustomMainButton extends StatelessWidget {
  final String? text;

  const CustomMainButton({Key? key, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppDimensions.getDimensions(requiredHeight: 45),
      width: AppDimensions.getDimensions(requiredWidth: 320),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
      child: MaterialButton(
        color: AppColors.kMainButton,
        shape: const RoundedRectangleBorder(),
        child: Text(text!,
          style: const TextStyle(
              fontFamily: 'Almarai',
              color: AppColors.kMainButtonText,
              fontWeight: FontWeight.w700,
              fontSize: 16),
        ),
        onPressed: () {},
      ),
    );
  }
}
