import 'package:assiut_project/core/app_constants/app_strings.dart';
import 'package:assiut_project/core/app_dimensions.dart';
import 'package:assiut_project/core/app_routes.dart';
import 'package:assiut_project/main_layers/presentaion_layer/registration/sign_in/shared_components_signin/forget_password_bottom_view.dart';
import 'package:assiut_project/main_layers/presentaion_layer/registration/sign_in/shared_components_signin/main_hint_text_registration.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/custom_widgets/main_app_bar.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/custom_widgets/main_button_red.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/custom_widgets/main_text_blue.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/custom_widgets/text_form_filed.dart';
import 'package:flutter/material.dart';

class ForgetPasswordWays extends StatelessWidget {
  const ForgetPasswordWays({Key? key}) : super(key: key);

  static int myIndex = 1;

  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context: context, designHeight: 778, designWidth: 360);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const MainAppBar(
              myTitle: AppStrings.kForgetPasswordAppbarTitle,
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
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SizedBox(
                    height: AppDimensions.getDimensions(requiredHeight: 48.84),
                  ),
                  const MainTextBlue(
                    myText: AppStrings.kConfirmAccount,
                  ),
                  SizedBox(
                    height: AppDimensions.getDimensions(requiredHeight: 8),
                  ),
                  const MainHintTextRegistration(
                    myText: AppStrings.kHintConfirmAccount,
                    textDirection: TextDirection.rtl,
                  ),
                  SizedBox(
                    height: AppDimensions.getDimensions(requiredHeight: 34),
                  ),
                  const CustomTextFormFiled(
                    hintText: AppStrings.kActualAddPhoneOrEmailGroupsTeacher,
                  ),
                  SizedBox(
                    height: AppDimensions.getDimensions(requiredHeight: 33),
                  ),
                  MainButtonRed(
                    buttonName: AppStrings.kForgetPasswordMainButtonText,
                    onPressed: () {
                      if (myIndex == 0) {
                        Navigator.pushNamed(
                            context, RoutesManager.forgetPasswordGetCodePhoneNumber);
                      } else {
                        Navigator.pushNamed(context, RoutesManager.forgetPasswordGetCodeEmail);
                      }
                    },
                  ),
                  SizedBox(
                    height: AppDimensions.getDimensions(requiredHeight: 248),
                  ),
                  const ForgetPasswordBottomView(
                    hintText: AppStrings.kForgetPasswordHintBottomView,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
