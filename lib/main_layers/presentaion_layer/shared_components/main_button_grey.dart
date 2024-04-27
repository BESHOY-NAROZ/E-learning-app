import 'package:assiut_project/core/app_constants/app_colors.dart';
import 'package:assiut_project/core/app_dimensions.dart';
import 'package:flutter/material.dart';

class MainButtonGrey extends StatelessWidget {
  final void Function()? onPressed;
  final String? buttonName;
  final Color? color;
  final double? requiredHeight;
  final double? requiredWidth;

  //   Main:FA   ,Text: 57   ,16   ,700
  const MainButtonGrey({
    super.key,
    this.onPressed,
    this.buttonName,
    this.color,
    this.requiredHeight,
    this.requiredWidth,
  });

  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context: context, designHeight: 778, designWidth: 360);
    return Container(
      height: AppDimensions.getDimensions(requiredHeight: requiredHeight ?? 45),
      width: AppDimensions.getDimensions(requiredWidth: requiredWidth ?? 320),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
      child: MaterialButton(
          color: AppColors.kMainScreenNewVersionButton,
          shape: const RoundedRectangleBorder(),
          onPressed: onPressed,
          child: Text(
            buttonName!,
            style: TextStyle(
                fontFamily: 'Almarai',
                color: color ?? AppColors.kMainScreenNewVersionButtonText,
                fontWeight: FontWeight.w700,
                fontSize: 16),
          )),
    );
  }
}
