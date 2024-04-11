import 'package:assiut_project/core/app_constants/app_strings.dart';
import 'package:assiut_project/core/app_dimensions.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_text_blue.dart';
import 'package:assiut_project/main_layers/presentaion_layer/sign_in/reset_password/reset_password_validation.dart';
import 'package:assiut_project/main_layers/presentaion_layer/sign_in/shared_components_signin/app_bar_signin.dart';
import 'package:assiut_project/main_layers/presentaion_layer/sign_in/shared_components_signin/forget_password_bottom_view.dart';
import 'package:assiut_project/main_layers/presentaion_layer/sign_in/shared_components_signin/main_hint_text.dart';
import 'package:flutter/material.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({Key? key}) : super(key: key);



  @override
  State<ResetPassword> createState() => _ForgetPasswordWithEmailState();
}

class _ForgetPasswordWithEmailState extends State<ResetPassword> {
  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context: context, designHeight: 778, designWidth: 360);
    return const Scaffold(
      appBar:
          AppBarSignIn(myTitle: AppStrings.kForgetPasswordAppbarTitle),
      body: Column(
        children: [
          MainTextBlue(
            myText: AppStrings.kResetPasswordMainText,
          ),
          MainHintText(
            myText: AppStrings.kResetPasswordHintText,
          ),
          ResetPasswordValidation(),

          ForgetPasswordBottomView(hintText: AppStrings.kForgetPasswordHintBottomView),
        ],
      ),
    );
  }
}
