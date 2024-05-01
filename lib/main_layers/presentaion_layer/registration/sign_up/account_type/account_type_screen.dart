import 'package:assiut_project/core/app_constants/app_assets.dart';
import 'package:assiut_project/core/app_constants/app_strings.dart';
import 'package:assiut_project/core/app_dimensions.dart';
import 'package:assiut_project/core/app_routes.dart';
import 'package:assiut_project/main_layers/presentaion_layer/registration/sign_in/shared_components_signin/main_hint_text_registration.dart';
import 'package:assiut_project/main_layers/presentaion_layer/registration/sign_up/shared_components_signup/bottom_text_signup.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/custom_widgets/main_app_bar.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/custom_widgets/main_text_blue.dart';
import 'package:flutter/material.dart';

import 'account_main_container.dart';

class AccountType extends StatelessWidget {
  const AccountType({Key? key}) : super(key: key);

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
              myTitle: AppStrings.kAccountRegistrationSignUp,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  SizedBox(
                    height: AppDimensions.getDimensions(requiredHeight: 30),
                  ),
                  const MainTextBlue(
                    myText: AppStrings.kAccountTypeSignUp,
                  ),
                  SizedBox(
                    height: AppDimensions.getDimensions(requiredHeight: 8),
                  ),
                  const MainHintTextRegistration(
                    myText: AppStrings.kChooseAccountTypeSignUp,
                  ),
                  SizedBox(
                    height: AppDimensions.getDimensions(requiredHeight: 30),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, RoutesManager.teacherMainDetails);
                    },
                    child: const AccountMainContainer(
                      myAccount: AppStrings.kTeacherAccountSignUp,
                      myIcon: AppAssets.kTeacherAccount,
                    ),
                  ),
                  SizedBox(
                    height: AppDimensions.getDimensions(requiredHeight: 30),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, RoutesManager.assistantMainDetails);
                    },
                    child: const AccountMainContainer(
                      myAccount: AppStrings.kAssistantAccountSignUp,
                      myIcon: AppAssets.kAssistantAccount,
                    ),
                  ),
                  SizedBox(
                    height: AppDimensions.getDimensions(requiredHeight: 270),
                  ),
                  const BottomTextSignUp(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
