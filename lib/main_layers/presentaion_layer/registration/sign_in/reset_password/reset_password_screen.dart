import 'package:assiut_project/core/app_constants/app_strings.dart';
import 'package:assiut_project/core/app_dimensions.dart';
import 'package:assiut_project/main_layers/presentaion_layer/registration/sign_in/shared_components_signin/app_bar_signin.dart';
import 'package:assiut_project/main_layers/presentaion_layer/registration/sign_in/shared_components_signin/forget_password_bottom_view.dart';
import 'package:assiut_project/main_layers/presentaion_layer/registration/sign_in/shared_components_signin/main_hint_text_registration.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_app_bar.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_text_blue.dart';
import 'package:flutter/material.dart';

import 'reset_password_validation.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({Key? key}) : super(key: key);

  @override
  State<ResetPassword> createState() => _ForgetPasswordWithEmailState();
}

class _ForgetPasswordWithEmailState extends State<ResetPassword> {
  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context: context, designHeight: 778, designWidth: 360);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const MainAppBar(
              myTitle: AppStrings.kForgetPasswordAppbarTitle,
              designHeight: 1006,
              designWidth: 360,
            ),
            SizedBox(
              height: AppDimensions.getDimensions(requiredHeight: 75),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: AppDimensions.getDimensions(requiredWidth: 20)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const MainTextBlue(
                    myText: AppStrings.kResetPasswordMainText,
                  ),
                  SizedBox(
                    height: AppDimensions.getDimensions(requiredHeight: 8),
                  ),
                  const MainHintTextRegistration(
                    myText: AppStrings.kResetPasswordHintText,
                    textAlign: TextAlign.end,
                  ),
                  SizedBox(
                    height: AppDimensions.getDimensions(requiredHeight: 22.58),
                  ),
                  const ResetPasswordValidation(),
                  SizedBox(height: AppDimensions.getDimensions(requiredHeight:
                  230),),
        
                  const ForgetPasswordBottomView(
                      hintText: AppStrings.kForgetPasswordHintBottomView),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
