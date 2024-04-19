import 'package:assiut_project/core/app_constants/app_colors.dart';
import 'package:assiut_project/core/app_constants/app_strings.dart';
import 'package:assiut_project/core/app_dimensions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PasswordValidation extends StatelessWidget {
  const PasswordValidation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context: context, designHeight: 1247, designWidth: 360);

    return Column(
      children: [
        const Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              AppStrings.kResetPasswordFirstError,
              style: TextStyle(
                fontWeight: FontWeight.w700,
                color: AppColors.kResetPasswordError,
                fontSize: 10,
                fontFamily: 'Almarai',
              ),
            ),
            Icon(
              Icons.check_circle_rounded,
              color: AppColors.kResetPasswordError,
              size: 14,
            )
          ],
        ),
        SizedBox(height: AppDimensions.getDimensions(requiredHeight: 4),),
        const Row(mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              AppStrings.kResetPasswordSecondError,
              style: TextStyle(
                fontWeight: FontWeight.w700,
                color: AppColors.kResetPasswordError,
                fontSize: 10,
                fontFamily: 'Almarai',
              ),
            ),
            Icon(
              Icons.cancel_rounded,
              color: AppColors.kResetPasswordError,
              size: 14,
            )
          ],
        ),
      ],
    );
  }
}
