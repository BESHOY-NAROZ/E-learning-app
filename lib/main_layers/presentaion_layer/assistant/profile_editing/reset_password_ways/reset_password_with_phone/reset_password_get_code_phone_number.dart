import 'package:assiut_project/core/app_constants/app_colors.dart';
import 'package:assiut_project/core/app_constants/app_strings.dart';
import 'package:assiut_project/core/app_dimensions.dart';
import 'package:assiut_project/core/app_routes.dart';
import 'package:assiut_project/main_layers/presentaion_layer/registration/sign_in/shared_components_signin/main_hint_text_registration.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_app_bar.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_button_red.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_text_blue.dart';
import 'package:flutter/material.dart';

import 'reset_password_countdown_timer.dart';

class ResetPasswordGetCodePhoneNumber extends StatefulWidget {
  const ResetPasswordGetCodePhoneNumber({
    Key? key,
  }) : super(key: key);

  static bool startCuntDown = false;

  @override
  State<ResetPasswordGetCodePhoneNumber> createState() => _ResetPasswordGetCodePhoneNumberState();
}

class _ResetPasswordGetCodePhoneNumberState extends State<ResetPasswordGetCodePhoneNumber> {
  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context: context, designHeight: 778, designWidth: 360);

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
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
              padding:
                  EdgeInsets.symmetric(horizontal: AppDimensions.getDimensions(requiredWidth: 20)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const MainTextBlue(
                    myText: AppStrings.kForgetPasswordGetCodePhoneMainText,
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
                            maxLength: 1,
                            cursorHeight: 0,
                            textAlign: TextAlign.center,
                            keyboardType: TextInputType.number,
                            style: TextStyle(fontSize: AppDimensions.defaultSize * 42),
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
                  SizedBox(
                    height: AppDimensions.getDimensions(requiredHeight: 18.67),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      if (ResetPasswordGetCodePhoneNumber.startCuntDown)
                        const ResetPasswordCountDownTimer(),
                      InkWell(
                        onTap: () {
                          setState(() {
                            CountDownTimerState();
                            ResetPasswordGetCodePhoneNumber.startCuntDown = true;
                          });
                        },
                        child: MainHintTextRegistration(
                          myText: ResetPasswordGetCodePhoneNumber.startCuntDown
                              ? (AppStrings.kForgetPasswordGetCodePhoneCounter)
                              : AppStrings.kForgetPasswordGetCodeHintText,
                          color: ResetPasswordGetCodePhoneNumber.startCuntDown
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
                  SizedBox(
                    height: AppDimensions.getDimensions(requiredHeight: 18.33),
                  ),
                  MainButtonRed(
                    onPressed: () {
                      Navigator.pushNamed(context, RoutesManager.setPasswordProfileEditing);
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
