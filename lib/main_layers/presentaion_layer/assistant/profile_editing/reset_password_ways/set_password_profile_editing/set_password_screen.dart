import 'package:assiut_project/core/app_constants/app_strings.dart';
import 'package:assiut_project/core/app_dimensions.dart';
import 'package:assiut_project/core/app_routes.dart';
import 'package:assiut_project/main_layers/presentaion_layer/registration/sign_in/shared_components_signin/main_hint_text_registration.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/custom_widgets/main_app_bar.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/custom_widgets/main_button_red.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/custom_widgets/main_text_blue.dart';
import 'package:flutter/material.dart';

import 'set_password_validation.dart';

class SetPasswordProfileEditing extends StatelessWidget {
  const SetPasswordProfileEditing({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context: context, designHeight: 778, designWidth: 360);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const MainAppBar(
              designHeight: 1006,
              designWidth: 360,
              myTitle: AppStrings.kResetPasswordProfileEditing,
            ),
            SizedBox(
              height: AppDimensions.getDimensions(requiredHeight: 75),
            ),
            Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: AppDimensions.getDimensions(requiredWidth: 20)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const MainTextBlue(
                    myText: AppStrings.kResetProfileEditing,
                  ),
                  SizedBox(
                    height: AppDimensions.getDimensions(requiredHeight: 8),
                  ),
                  const MainHintTextRegistration(
                    myText: AppStrings.kHintResetProfileEditing,
                    textDirection: TextDirection.rtl,
                  ),
                  SizedBox(
                    height: AppDimensions.getDimensions(requiredHeight: 22.58),
                  ),
                  const SetPasswordValidation(),
                  SizedBox(
                    height: AppDimensions.getDimensions(requiredHeight: 32),
                  ),
                  MainButtonRed(
                    buttonName: AppStrings.kSetProfileEditing,
                    onPressed: () {
                      Navigator.pushNamed(context, RoutesManager.setPasswordDone);
                    },
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
