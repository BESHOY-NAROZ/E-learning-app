import 'package:assiut_project/core/app_constants/app_colors.dart';
import 'package:assiut_project/core/app_constants/app_strings.dart';
import 'package:assiut_project/core/app_dimensions.dart';
import 'package:assiut_project/core/app_routes.dart';
import 'package:assiut_project/main_layers/presentaion_layer/registration/sign_in/shared_components_signin/main_hint_text_registration.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_button_red.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_text_blue.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/text_form_filed.dart';
import 'package:flutter/material.dart';

class ResetPasswordWithEmail extends StatelessWidget {
  const ResetPasswordWithEmail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context: context, designHeight: 778, designWidth: 360);
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          const MainTextBlue(
            myText: AppStrings.kForgetPasswordMainTextEmail,
          ),
          SizedBox(
            height: AppDimensions.getDimensions(requiredHeight: 9),
          ),
          const MainHintTextRegistration(
            myText: AppStrings.kForgetPasswordHintTextEmail,
          ),
          SizedBox(
            height: AppDimensions.getDimensions(requiredHeight: 16),
          ),
          const CustomTextFormFiled(
            hintText: AppStrings.kForgetPasswordTextFormFiledHintEmail,
            keyboardType: TextInputType.emailAddress,
          ),
          SizedBox(
            height: AppDimensions.getDimensions(requiredHeight: 20),
          ),
          const MainHintTextRegistration(
            myText: AppStrings.kWriteOldPasswordProfileEditing,
          ),
          SizedBox(
            height: AppDimensions.getDimensions(requiredHeight: 16),
          ),
          const CustomTextFormFiled(
            obscureText: true,
            hintText: AppStrings.kResetPasswordHintFormFiled,
          ),
          SizedBox(
            height: AppDimensions.getDimensions(requiredHeight: 13),
          ),
          MainButtonRed(
            buttonName: AppStrings.kForgetPasswordMainButtonText,
            onPressed: () {
              Navigator.pushNamed(context, RoutesManager.resetPasswordGetCodeEmail);

            },
          ),
        ],
      ),
    );
  }
}
