import 'package:assiut_project/core/app_constants/app_colors.dart';
import 'package:assiut_project/core/app_constants/app_strings.dart';
import 'package:assiut_project/core/app_dimensions.dart';
import 'package:assiut_project/core/app_routes.dart';
import 'package:assiut_project/main_layers/presentaion_layer/registration/sign_in/shared_components_signin/app_bar_signin.dart';
import 'package:assiut_project/main_layers/presentaion_layer/registration/sign_in/shared_components_signin/forget_password_bottom_view.dart';
import 'package:assiut_project/main_layers/presentaion_layer/registration/sign_in/shared_components_signin/main_hint_text_registration.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_app_bar.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_button_red.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_text_blue.dart';
import 'package:flutter/material.dart';

import 'confirm_Account_countdown_timer.dart';


class ConfirmAccount extends StatefulWidget {
  const ConfirmAccount({
    Key? key,
  }) : super(key: key);

  static bool startCuntDown = false;

  @override
  State<ConfirmAccount> createState() =>
      _ConfirmAccountState();
}

class _ConfirmAccountState
    extends State<ConfirmAccount> {
  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context: context, designHeight: 778, designWidth: 360);

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const MainAppBar(
              myTitle: AppStrings.kConfirmAccountSignUp,
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
                    myText: AppStrings.kConfirmNumberSignUp,
                  ),
                  SizedBox(
                    height: AppDimensions.getDimensions(requiredHeight: 11),
                  ),
                  const MainHintTextRegistration(
                    myText: AppStrings.kForgetPasswordGetCodePhoneHintText,
                  ),
                  SizedBox(
                    height: AppDimensions.getDimensions(requiredHeight: 50),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: List.generate(
                      6,
                          (index) {
                        return Container(
                          height:
                          AppDimensions.getDimensions(requiredWidth: 45),
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
                            maxLength: 1,
                            cursorHeight: 0,
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
                        );
                      },
                    ),
                  ),
                  SizedBox(height: AppDimensions.getDimensions(requiredHeight:
                  18.67),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      if (ConfirmAccount.startCuntDown)
                        const ConfirmAccountCountDownTimer(),
                      InkWell(
                        onTap: () {
                          setState(() {
                            const ConfirmAccountCountDownTimer();
                            ConfirmAccount.startCuntDown = true;
                          });
                        },
                        child: MainHintTextRegistration(
                          myText: ConfirmAccount.startCuntDown
                              ? (AppStrings.kForgetPasswordGetCodePhoneCounter)
                              : AppStrings.kForgetPasswordGetCodeHintText,
                          color: ConfirmAccount.startCuntDown
                              ? AppColors.kSignInMainHintText
                              : AppColors.kForgetPasswordGetCodeSecondHintText,
                        ),
                      ),

                      const MainHintTextRegistration(
                        myText: AppStrings.kForgetPasswordGetCodeSecondHintText,
                      ),
                      // const CountDownTimer()
                    ],
                  ),
                  SizedBox(height: AppDimensions.getDimensions(requiredHeight:
                  18.33),),
                  MainButtonRed(
                    onPressed: () {
                      Navigator.pushNamed(
                          context, RoutesManager.signUpDone);
                    },
                    buttonName: AppStrings.kForgetPasswordGetCodeMainButtonText,
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
