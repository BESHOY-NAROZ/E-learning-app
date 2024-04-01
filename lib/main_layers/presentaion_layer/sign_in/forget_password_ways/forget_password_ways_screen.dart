import 'package:assiut_project/core/app_constants/app_colors.dart';
import 'package:assiut_project/core/app_constants/app_strings.dart';
import 'package:assiut_project/core/app_dimensions.dart';
import 'package:assiut_project/main_layers/presentaion_layer/sign_in/shared_components_signin/app_bar_signin.dart';
import 'package:assiut_project/main_layers/presentaion_layer/sign_in/shared_components_signin/forget_password_bottom_view.dart';
import 'package:flutter/material.dart';

import 'forget_password_with_email/forget_password_with_email_screen.dart';
import 'forget_password_with_phone/forget_password_with_phone_number_screen.dart';

class ForgetPasswordWays extends StatelessWidget {
  const ForgetPasswordWays({Key? key}) : super(key: key);

static int myIndex = 0;
  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context: context, designHeight: 778, designWidth: 360);
    return Scaffold(
      appBar:
          const AppBarSignIn(myTitle: AppStrings.kForgetPasswordAppbarTitle),
      body: Column(
        children: [
          Row(
            children: [
              Container(
                height: AppDimensions.getDimensions(requiredHeight: 34.16),
                width: AppDimensions.getDimensions(requiredWidth: 99.94),
                decoration: BoxDecoration(
                    color:  AppColors.kForgetPasswordToggleSelectedButtonColor
                    ,
                    borderRadius: BorderRadius.circular(10)),
                child: MaterialButton(
                  child: const Text(
                    AppStrings.kForgetPasswordButtonEmail,
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      color: AppColors.kForgetPasswordToggleSelectedButtonText
                          ,
                      fontSize: 12,
                      fontFamily: 'Almarai',
                    ),
                  ),
                  onPressed: () {
                  },
                ),
              ),
              Container(
                height: AppDimensions.getDimensions(requiredHeight: 34.16),
                width: AppDimensions.getDimensions(requiredWidth: 99.94),
                decoration: BoxDecoration(
                    color: AppColors.kForgetPasswordToggleButtonColor,
                    borderRadius: BorderRadius.circular(10)),
                child: MaterialButton(
                  child: const Text(
                    AppStrings.kForgetPasswordButtonPhone,
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      color: AppColors.kForgetPasswordToggleButtonText
                          ,
                      fontSize: 12,
                      fontFamily: 'Almarai',
                    ),
                  ),
                  onPressed: () {
                  },
                ),
              ),
            ],
          ),
          myIndex == 0 ? const ForgetPasswordWithPhoneNumber():const
          ForgetPasswordWithEmail(),

          const ForgetPasswordBottomView(
            hintText: AppStrings.kForgetPasswordHintBottomView,
          )
        ],
      ),
    );
  }
}
