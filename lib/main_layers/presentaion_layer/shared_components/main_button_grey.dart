import 'package:assiut_project/core/app_constants/app_colors.dart';
import 'package:assiut_project/core/app_constants/app_strings.dart';
import 'package:assiut_project/core/app_dimensions.dart';
import 'package:assiut_project/core/app_routes.dart';
import 'package:flutter/material.dart';

class MainButtonGrey extends StatelessWidget {
  final void Function() ? onPressed;
  final String  ? buttonName;

  const MainButtonGrey({
    super.key, this.onPressed, this.buttonName,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppDimensions.getDimensions(requiredHeight: 45),
      width: AppDimensions.getDimensions(requiredWidth: 320),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
      child: MaterialButton(
          color: AppColors.kMainScreenNewVersionButton,
          shape: const RoundedRectangleBorder(),
          onPressed: onPressed,
          child:  Text(buttonName!,
            style: const TextStyle(
                fontFamily: 'Almarai',
                color: AppColors.kMainScreenNewVersionButtonText,
                fontWeight: FontWeight.w700,
                fontSize: 16),
          )
      ),
    );
  }
}