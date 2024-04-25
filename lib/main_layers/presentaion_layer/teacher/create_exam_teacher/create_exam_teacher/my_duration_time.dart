import 'package:assiut_project/core/app_constants/app_colors.dart';
import 'package:assiut_project/core/app_constants/app_strings.dart';
import 'package:assiut_project/core/app_dimensions.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/text_form_filed.dart';
import 'package:flutter/material.dart';

class MyDurationTime extends StatelessWidget {
  const MyDurationTime({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context: context, designHeight: 778, designWidth: 360);

    return Row(
      children: [
        const CustomTextFormFiled(
          hintText: AppStrings.kSecondCreateExam,
          textDirection: TextDirection.rtl,
          width: 91,
          hintStyle: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            fontFamily: 'Almarai',
            color: AppColors.kDetailsProfileEditing,
          ),
        ),
        SizedBox(
          width: AppDimensions.getDimensions(requiredHeight: 22),
        ),
        const CustomTextFormFiled(
          hintText: AppStrings.kMinuteCreateExam,
          textDirection: TextDirection.rtl,
          width: 91,
          hintStyle: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            fontFamily: 'Almarai',
            color: AppColors.kDetailsProfileEditing,
          ),
        ),
        SizedBox(
          width: AppDimensions.getDimensions(requiredHeight: 22),
        ),
        const CustomTextFormFiled(
          hintText: AppStrings.kHoursCreateExam,
          textDirection: TextDirection.rtl,
          width: 91,
          hintStyle: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            fontFamily: 'Almarai',
            color: AppColors.kDetailsProfileEditing,
          ),
        ),
      ],
    );
  }
}
