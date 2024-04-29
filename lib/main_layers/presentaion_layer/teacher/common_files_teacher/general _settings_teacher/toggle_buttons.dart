import 'package:assiut_project/core/app_constants/app_colors.dart';
import 'package:assiut_project/core/app_constants/app_strings.dart';
import 'package:assiut_project/core/app_dimensions.dart';
import 'package:flutter/material.dart';

import 'general _settings_screen.dart';

class CustomToggleButton extends StatefulWidget {
  const CustomToggleButton({Key? key}) : super(key: key);

  @override
  State<CustomToggleButton> createState() => _ToggleButtonState();
}

class _ToggleButtonState extends State<CustomToggleButton> {
  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context: context, designHeight: 778, designWidth: 360);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: AppDimensions.getDimensions(requiredHeight: 34.16),
          width: AppDimensions.getDimensions(requiredWidth: 155),
          decoration: BoxDecoration(
              color: GeneralSettingsTeacher.myIndex == 0
                  ? AppColors.kForgetPasswordToggleSelectedButtonColor
                  : AppColors.kForgetPasswordToggleButtonColor,
              borderRadius: BorderRadius.circular(10)),
          child: MaterialButton(
            padding: const EdgeInsets.all(0),
            child: Text(
              AppStrings.kDarkModeCommon,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w700,
                color: GeneralSettingsTeacher.myIndex == 0
                    ? AppColors.kForgetPasswordToggleSelectedButtonText
                    : AppColors.kForgetPasswordToggleButtonText,
                fontSize: AppDimensions.defaultSize * 12,
                fontFamily: 'Almarai',
              ),
            ),
            onPressed: () {
              setState(() {
                GeneralSettingsTeacher.myIndex = 0;
              });
            },
          ),
        ),
        //AppColors.kForgetPasswordToggleSelectedButtonColor
        Container(
          height: AppDimensions.getDimensions(requiredHeight: 34.16),
          width: AppDimensions.getDimensions(requiredWidth: 155),
          decoration: BoxDecoration(
              color: GeneralSettingsTeacher.myIndex == 1
                  ? AppColors.kForgetPasswordToggleSelectedButtonColor
                  : AppColors.kForgetPasswordToggleButtonColor,
              borderRadius: BorderRadius.circular(10)),
          child: MaterialButton(
            padding: const EdgeInsets.all(0),
            child: Text(
              AppStrings.kLightModeCommon,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w700,
                color: GeneralSettingsTeacher.myIndex == 1
                    ? AppColors.kForgetPasswordToggleSelectedButtonText
                    : AppColors.kForgetPasswordToggleButtonText,
                fontSize: AppDimensions.defaultSize * 12,
                fontFamily: 'Almarai',
              ),
            ),
            onPressed: () {
              setState(() {
                GeneralSettingsTeacher.myIndex = 1;
              });
            },
          ),
        ),
      ],
    );
  }
}
