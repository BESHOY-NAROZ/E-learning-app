import 'package:assiut_project/core/app_constants/app_colors.dart';
import 'package:assiut_project/core/app_constants/app_strings.dart';
import 'package:assiut_project/core/app_dimensions.dart';
import 'package:assiut_project/core/app_routes.dart';
import 'package:assiut_project/main_layers/presentaion_layer/sign_in/shared_components_signin/app_bar_signin.dart';
import 'package:assiut_project/main_layers/presentaion_layer/sign_in/shared_components_signin/forget_password_bottom_view.dart';
import 'package:flutter/material.dart';

import 'forget_password_with_email/forget_password_with_email_screen.dart';
import 'forget_password_with_phone/forget_password_with_phone_number_screen.dart';

class ForgetPasswordWays extends StatefulWidget {
  const ForgetPasswordWays({Key? key}) : super(key: key);

static int myIndex = 0;

  @override
  State<ForgetPasswordWays> createState() => _ForgetPasswordWaysState();
}

class _ForgetPasswordWaysState extends State<ForgetPasswordWays> {
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
                    color:  ForgetPasswordWays.myIndex == 0 ? AppColors
                        .kForgetPasswordToggleSelectedButtonColor: AppColors.kForgetPasswordToggleButtonColor
                    ,
                    borderRadius: BorderRadius.circular(10)),
                child: MaterialButton(
                  padding: const EdgeInsets.all(0),
                  child:  Text(
                    AppStrings.kForgetPasswordButtonEmail,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      color: ForgetPasswordWays.myIndex == 0 ? AppColors
                      .kForgetPasswordToggleSelectedButtonText: AppColors.kForgetPasswordToggleButtonText
                          ,
                      fontSize: 12,
                      fontFamily: 'Almarai',
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      ForgetPasswordWays.myIndex = 0;
                    });
                  },
                ),
              ),
              //AppColors.kForgetPasswordToggleSelectedButtonColor
              Container(
                height: AppDimensions.getDimensions(requiredHeight: 34.16),
                width: AppDimensions.getDimensions(requiredWidth: 99.94),
                decoration: BoxDecoration(
                    color: ForgetPasswordWays.myIndex == 1 ? AppColors
        .kForgetPasswordToggleSelectedButtonColor: AppColors
                        .kForgetPasswordToggleButtonColor,
                    borderRadius: BorderRadius.circular(10)),
                child: MaterialButton(
                  padding: const EdgeInsets.all(0),
                  child:  Text(
                    AppStrings.kForgetPasswordButtonPhone,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      color: ForgetPasswordWays.myIndex == 1 ? AppColors
                          .kForgetPasswordToggleSelectedButtonText: AppColors.kForgetPasswordToggleButtonText
                      ,
                      fontSize: 12,
                      fontFamily: 'Almarai',
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      ForgetPasswordWays.myIndex = 1;
                    });
                  },
                ),
              ),
            ],
          ),
          ForgetPasswordWays.myIndex == 0 ? const ForgetPasswordWithEmail():const
          ForgetPasswordWithPhoneNumber(),

          const ForgetPasswordBottomView(
            hintText: AppStrings.kForgetPasswordHintBottomView,
          )
        ],
      ),
    );
  }
}
