import 'package:assiut_project/core/app_constants/app_colors.dart';
import 'package:assiut_project/core/app_constants/app_strings.dart';
import 'package:assiut_project/core/app_dimensions.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/custom_widgets/main_app_bar.dart';
import 'package:flutter/material.dart';

import 'reset_password_with_email/reset_password_with_email_screen.dart';
import 'reset_password_with_phone/reset_password_with_phone_number_screen.dart';

class ResetPasswordWays extends StatefulWidget {
  const ResetPasswordWays({Key? key}) : super(key: key);

  static int myIndex = 0;

  @override
  State<ResetPasswordWays> createState() => _ResetPasswordWaysState();
}

class _ResetPasswordWaysState extends State<ResetPasswordWays> {
  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context: context, designHeight: 778, designWidth: 360);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const MainAppBar(
              myTitle: AppStrings.kResetPasswordProfileEditing,
              designHeight: 1006,
              designWidth: 360,
            ),
            SizedBox(
              height: AppDimensions.getDimensions(requiredHeight: 70),
            ),
            Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: AppDimensions.getDimensions(requiredWidth: 20)),
              child: Column(
                children: [
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: AppDimensions.getDimensions(requiredHeight: 34.16),
                          width: AppDimensions.getDimensions(requiredWidth: 99.94),
                          decoration: BoxDecoration(
                              color: ResetPasswordWays.myIndex == 0
                                  ? AppColors.kForgetPasswordToggleSelectedButtonColor
                                  : AppColors.kForgetPasswordToggleButtonColor,
                              borderRadius: BorderRadius.circular(10)),
                          child: MaterialButton(
                            padding: const EdgeInsets.all(0),
                            child: Text(
                              AppStrings.kForgetPasswordButtonEmail,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                color: ResetPasswordWays.myIndex == 0
                                    ? AppColors.kForgetPasswordToggleSelectedButtonText
                                    : AppColors.kForgetPasswordToggleButtonText,
                                fontSize: AppDimensions.defaultSize * 12,
                                fontFamily: 'Almarai',
                              ),
                            ),
                            onPressed: () {
                              setState(() {
                                ResetPasswordWays.myIndex = 0;
                              });
                            },
                          ),
                        ),
                        //AppColors.kForgetPasswordToggleSelectedButtonColor
                        Container(
                          height: AppDimensions.getDimensions(requiredHeight: 34.16),
                          width: AppDimensions.getDimensions(requiredWidth: 99.94),
                          decoration: BoxDecoration(
                              color: ResetPasswordWays.myIndex == 1
                                  ? AppColors.kForgetPasswordToggleSelectedButtonColor
                                  : AppColors.kForgetPasswordToggleButtonColor,
                              borderRadius: BorderRadius.circular(10)),
                          child: MaterialButton(
                            padding: const EdgeInsets.all(0),
                            child: Text(
                              AppStrings.kForgetPasswordButtonPhone,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                color: ResetPasswordWays.myIndex == 1
                                    ? AppColors.kForgetPasswordToggleSelectedButtonText
                                    : AppColors.kForgetPasswordToggleButtonText,
                                fontSize: AppDimensions.defaultSize * 12,
                                fontFamily: 'Almarai',
                              ),
                            ),
                            onPressed: () {
                              setState(() {
                                ResetPasswordWays.myIndex = 1;
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: AppDimensions.getDimensions(requiredHeight: 48.84),
                  ),
                  ResetPasswordWays.myIndex == 0
                      ? const ResetPasswordWithEmail()
                      : const ResetPasswordWithPhoneNumber(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
