import 'package:assiut_project/core/app_constants/app_strings.dart';
import 'package:assiut_project/core/app_dimensions.dart';
import 'package:assiut_project/core/app_routes.dart';
import 'package:assiut_project/main_layers/presentaion_layer/registration/sign_in/shared_components_signin/main_hint_text_registration.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_app_bar.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_button_red.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_text_blue.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/text_form_filed.dart';
import 'package:flutter/material.dart';

class ResetEmail extends StatelessWidget {
  const ResetEmail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context: context, designHeight: 778, designWidth: 360);

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const MainAppBar(
              designHeight: 1006,
              designWidth: 360,
              myTitle: AppStrings.kResetEmailProfileEditing,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SizedBox(
                    height: AppDimensions.getDimensions(requiredHeight: 114),
                  ),
                  const MainTextBlue(
                    myText: AppStrings.kForgetPasswordMainTextPhone,
                  ),
                  SizedBox(
                    height: AppDimensions.getDimensions(requiredHeight: 18),
                  ),
                  const MainHintTextRegistration(
                    myText: AppStrings.kForgetPasswordHintTextPhone,
                  ),
                  SizedBox(
                    height: AppDimensions.getDimensions(requiredHeight: 8),
                  ),
                  const CustomTextFormFiled(
                    hintText: AppStrings.kActualPhoneNumberProfileEditing,
                    keyboardType: TextInputType.phone,
                    textAlign: TextAlign.start,
                  ),
                  SizedBox(
                    height: AppDimensions.getDimensions(requiredHeight: 32),
                  ),
                  MainButtonRed(
                    buttonName: AppStrings.kForgetPasswordMainButtonText,
                    onPressed: () {
                      Navigator.pushReplacementNamed(context,
                          RoutesManager.resetEmailGetCode);
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
