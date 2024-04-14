import 'package:assiut_project/core/app_constants/app_colors.dart';
import 'package:assiut_project/core/app_constants/app_strings.dart';
import 'package:assiut_project/core/app_dimensions.dart';
import 'package:assiut_project/core/app_routes.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_button_red.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_text_blue.dart';
import 'package:assiut_project/main_layers/presentaion_layer/sign_in/forget_password_ways/forget_password_with_phone/forget_password_countdown_timer.dart';
import 'package:assiut_project/main_layers/presentaion_layer/sign_in/shared_components_signin/app_bar_signin.dart';
import 'package:assiut_project/main_layers/presentaion_layer/sign_in/shared_components_signin/forget_password_bottom_view.dart';
import 'package:assiut_project/main_layers/presentaion_layer/sign_in/shared_components_signin/main_hint_text.dart';
import 'package:flutter/material.dart';

class ForgetPasswordGetCodePhoneNumber extends StatefulWidget {
  const ForgetPasswordGetCodePhoneNumber({
    Key? key,
  }) : super(key: key);

  static bool startCuntDown = false;

  @override
  State<ForgetPasswordGetCodePhoneNumber> createState() =>
      _ForgetPasswordGetCodePhoneNumberState();
}

class _ForgetPasswordGetCodePhoneNumberState
    extends State<ForgetPasswordGetCodePhoneNumber> {
  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context: context, designHeight: 778, designWidth: 360);

    return Scaffold(
      appBar:
          const AppBarSignIn(myTitle: AppStrings.kForgetPasswordAppbarTitle),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const MainTextBlue(
            myText: AppStrings.kForgetPasswordGetCodePhoneMainText,
          ),
          const MainHintText(
            myText: AppStrings.kForgetPasswordGetCodePhoneHintText,
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
                  ),
                );
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (ForgetPasswordGetCodePhoneNumber.startCuntDown)
                const CountDownTimer(),
              InkWell(
                onTap: () {
                  setState(() {
                    CountDownTimerState();
                    ForgetPasswordGetCodePhoneNumber.startCuntDown = true;
                  });
                },
                child: MainHintText(
                  myText: ForgetPasswordGetCodePhoneNumber.startCuntDown
                      ? (AppStrings.kForgetPasswordGetCodePhoneCounter)
                      : AppStrings.kForgetPasswordGetCodeHintText,
                  color: ForgetPasswordGetCodePhoneNumber.startCuntDown
                      ? AppColors.kSignInMainHintText
                      : AppColors.kForgetPasswordGetCodeSecondHintText,
                ),
              ),

              const MainHintText(
                myText: AppStrings.kForgetPasswordGetCodeSecondHintText,
              ),
              // const CountDownTimer()
            ],
          ),
          MainButtonRed(
            onPressed: () {
              Navigator.pushReplacementNamed(context, RoutesManager.resetPassword);

            },
            buttonName: AppStrings.kForgetPasswordGetCodeMainButtonText,
          ),
          const ForgetPasswordBottomView(
            hintText: AppStrings.kForgetPasswordHintBottomView,
          )
        ],
      ),
    );
  }
}
