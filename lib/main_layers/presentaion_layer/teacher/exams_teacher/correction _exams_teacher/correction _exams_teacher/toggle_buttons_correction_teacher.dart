import 'package:assiut_project/core/app_constants/app_colors.dart';
import 'package:assiut_project/core/app_constants/app_strings.dart';
import 'package:assiut_project/core/app_dimensions.dart';
import 'package:flutter/material.dart';

class CustomToggleButtonCorrectionTeacher extends StatefulWidget {
  const CustomToggleButtonCorrectionTeacher({Key? key}) : super(key: key);

  @override
  State<CustomToggleButtonCorrectionTeacher> createState() =>
      _CustomToggleButtonCorrectionTeacherState();
}

class _CustomToggleButtonCorrectionTeacherState extends State<CustomToggleButtonCorrectionTeacher> {
  int myIndex = 0;

  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context: context, designHeight: 778, designWidth: 360);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: AppDimensions.getDimensions(requiredHeight: 36),
          width: AppDimensions.getDimensions(requiredWidth: 140),
          decoration: BoxDecoration(
              color: myIndex == 0
                  ? AppColors.kForgetPasswordToggleSelectedButtonColor
                  : AppColors.kForgetPasswordToggleButtonColor,
              borderRadius: BorderRadius.circular(10)),
          child: MaterialButton(
            padding: const EdgeInsets.all(0),
            child: Text(
              AppStrings.kExamsNotCorrectedExams,
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
        SizedBox(
          width: AppDimensions.getDimensions(requiredWidth: 2),
        ),
        //AppColors.kForgetPasswordToggleSelectedButtonColor
        Container(
          height: AppDimensions.getDimensions(requiredHeight: 36),
          width: AppDimensions.getDimensions(requiredWidth: 140),
          decoration: BoxDecoration(
              color: myIndex == 1
                  ? AppColors.kForgetPasswordToggleSelectedButtonColor
                  : AppColors.kForgetPasswordToggleButtonColor,
              borderRadius: BorderRadius.circular(10)),
          child: MaterialButton(
            padding: const EdgeInsets.all(0),
            child: Text(
              AppStrings.kExamsCorrectedExams,
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
