import 'package:assiut_project/core/app_constants/app_colors.dart';
import 'package:assiut_project/core/app_dimensions.dart';
import 'package:flutter/material.dart';

class MainButtonRed extends StatelessWidget {
  final String? buttonName;
  final double? requiredWidth;
  final double? requiredHeight;
  final void Function()? onPressed;

  const MainButtonRed(
      {Key? key, this.buttonName, this.onPressed, this.requiredWidth, this.requiredHeight})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context: context, designHeight: 778, designWidth: 360);
    return Container(
      height: AppDimensions.getDimensions(requiredHeight: requiredHeight ?? 45),
      width: AppDimensions.getDimensions(requiredWidth: requiredWidth ?? 320),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
      child: MaterialButton(
          color: AppColors.kMainButton,
          shape: const RoundedRectangleBorder(),
          onPressed: onPressed,
          child: Text(
            buttonName!,
            style: TextStyle(
                fontFamily: 'Almarai',
                color: AppColors.kMainTextWhite,
                fontWeight: FontWeight.w700,
                fontSize: AppDimensions.defaultSize * 16),
          )),
    );
  }
}
