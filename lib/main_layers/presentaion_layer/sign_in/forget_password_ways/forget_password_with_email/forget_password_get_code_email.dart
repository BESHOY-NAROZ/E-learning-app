import 'package:assiut_project/core/app_constants/app_colors.dart';
import 'package:assiut_project/core/app_constants/app_strings.dart';
import 'package:assiut_project/core/app_dimensions.dart';
import 'package:assiut_project/core/app_routes.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_button.dart';
import 'package:assiut_project/main_layers/presentaion_layer/sign_in/shared_components_signin/app_bar_signin.dart';
import 'package:assiut_project/main_layers/presentaion_layer/sign_in/shared_components_signin/forget_password_bottom_view.dart';
import 'package:assiut_project/main_layers/presentaion_layer/sign_in/shared_components_signin/forget_password_main_text.dart';
import 'package:assiut_project/main_layers/presentaion_layer/sign_in/shared_components_signin/main_hint_text.dart';
import 'package:flutter/material.dart';

class ForgetPasswordGetCodeEmail extends StatelessWidget {
  const ForgetPasswordGetCodeEmail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context: context, designHeight: 778, designWidth: 360);

    return Scaffold(
      appBar:
          const AppBarSignIn(myTitle: AppStrings.kForgetPasswordAppbarTitle),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const ForgetPasswordMainText(
            myText: AppStrings.kForgetPasswordGetCodeEmailMainText,
          ),
          const MainHintText(
            myText: AppStrings.kForgetPasswordGetCodeEmailHintText,
          ),
          Row(
            children: List.generate(
              6,
              (index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Container(
                    height: AppDimensions.getDimensions(requiredWidth: 45),
                    width: AppDimensions.getDimensions(requiredWidth: 40),
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 1,
                        color: AppColors.kFormFiledGetCodeFormFiled,
                      ),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    child: TextField(
                      cursorHeight: 0,
                      maxLength: 1,
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.number,
                      style: const TextStyle(fontSize: 42),
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        counterText: '',
                      ),
                      onChanged: (value) {
                        if (value.length == 1) {
                          FocusScope.of(context).nextFocus();
                        }
                      },
                    ),
                  ),
                );
              },
            ),
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MainHintText(
                myText: AppStrings.kForgetPasswordGetCodeHintText,
                color: AppColors.kForgetPasswordGetCodeSecondHintText,

              ),
              MainHintText(
                myText: AppStrings.kForgetPasswordGetCodeSecondHintText,
              ),
            ],
          ),
          CustomMainButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, RoutesManager.resetPassword);
            },
            text: AppStrings.kForgetPasswordGetCodeMainButtonText,
          ),

        ],
      ),
    );
  }
}
