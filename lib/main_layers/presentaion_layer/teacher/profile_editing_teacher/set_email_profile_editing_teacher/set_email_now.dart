import 'package:assiut_project/core/app_constants/app_strings.dart';
import 'package:assiut_project/core/app_dimensions.dart';
import 'package:assiut_project/core/app_routes.dart';
import 'package:assiut_project/main_layers/presentaion_layer/registration/sign_in/shared_components_signin/main_hint_text_registration.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/custom_widgets/main_app_bar.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/custom_widgets/main_button_red.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/custom_widgets/main_text_blue.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/custom_widgets/text_form_filed.dart';
import 'package:flutter/material.dart';

class SetEmailNowTeacher extends StatelessWidget {
  const SetEmailNowTeacher({Key? key}) : super(key: key);

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
                    myText: AppStrings.kEmailProfileEditing,
                  ),
                  SizedBox(
                    height: AppDimensions.getDimensions(requiredHeight: 22),
                  ),
                  const MainHintTextRegistration(
                    myText: AppStrings.kHintProfileEditing,
                    textDirection: TextDirection.rtl,
                  ),
                  SizedBox(
                    height: AppDimensions.getDimensions(requiredHeight: 15),
                  ),
                  const CustomTextFormFiled(
                    hintText: AppStrings.kActualEmailProfileEditing,
                    keyboardType: TextInputType.emailAddress,
                    textAlign: TextAlign.start,
                  ),
                  SizedBox(
                    height: AppDimensions.getDimensions(requiredHeight: 80),
                  ),
                  MainButtonRed(
                    buttonName: AppStrings.kSetProfileEditing,
                    onPressed: () {
                      Navigator.pushNamed(context, RoutesManager.setEmailDoneTeacher);
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
