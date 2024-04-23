import 'package:assiut_project/core/app_constants/app_colors.dart';
import 'package:assiut_project/core/app_constants/app_strings.dart';
import 'package:assiut_project/core/app_dimensions.dart';
import 'package:flutter/material.dart';

class TeacherGenderToggleButton extends StatefulWidget {
  const TeacherGenderToggleButton({Key? key}) : super(key: key);

  @override
  State<TeacherGenderToggleButton> createState() =>
      _TeacherGenderToggleButtonState();
}

class _TeacherGenderToggleButtonState extends State<TeacherGenderToggleButton> {
  int myIndex = 1;
  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context: context, designHeight: 778, designWidth: 360);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: AppDimensions.getDimensions(requiredHeight: 34.1),
          width: AppDimensions.getDimensions(requiredWidth: 155),
          decoration: BoxDecoration(
              color: myIndex == 0
                  ? AppColors.kForgetPasswordToggleSelectedButtonColor
                  : AppColors.kForgetPasswordToggleButtonColor,
              borderRadius: BorderRadius.circular(10)),
          child: MaterialButton(
            padding: const EdgeInsets.all(0),
            child: Text(
              AppStrings.kFemaleToggleButtonSignUp,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w700,
                color: myIndex == 0
                    ? AppColors.kForgetPasswordToggleSelectedButtonText
                    : AppColors.kForgetPasswordToggleButtonText,
                fontSize: 12,
                fontFamily: 'Almarai',
              ),
            ),
            onPressed: () {
              setState(() {
                myIndex = 0;
              });
            },
          ),
        ),
        const Spacer(),
        //AppColors.kForgetPasswordToggleSelectedButtonColor
        Container(
          height: AppDimensions.getDimensions(requiredHeight: 34.16),
          width: AppDimensions.getDimensions(requiredWidth: 155),
          decoration: BoxDecoration(
              color: myIndex == 1
                  ? AppColors.kForgetPasswordToggleSelectedButtonColor
                  : AppColors.kForgetPasswordToggleButtonColor,
              borderRadius: BorderRadius.circular(10)),
          child: MaterialButton(
            padding: const EdgeInsets.all(0),
            child: Text(
              AppStrings.kMaleToggleButtonSignUp,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w700,
                color: myIndex == 1
                    ? AppColors.kForgetPasswordToggleSelectedButtonText
                    : AppColors.kForgetPasswordToggleButtonText,
                fontSize: 12,
                fontFamily: 'Almarai',
              ),
            ),
            onPressed: () {
              setState(() {
                myIndex = 1;
              });
            },
          ),
        ),
      ],
    );
  }
}
