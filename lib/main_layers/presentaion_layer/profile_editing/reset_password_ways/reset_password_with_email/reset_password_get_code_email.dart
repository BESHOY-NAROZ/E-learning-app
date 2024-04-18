import 'package:assiut_project/core/app_constants/app_colors.dart';
import 'package:assiut_project/core/app_constants/app_strings.dart';
import 'package:assiut_project/core/app_dimensions.dart';
import 'package:assiut_project/core/app_routes.dart';
import 'package:assiut_project/main_layers/presentaion_layer/registration/sign_in/shared_components_signin/forget_password_bottom_view.dart';
import 'package:assiut_project/main_layers/presentaion_layer/registration/sign_in/shared_components_signin/main_hint_text_registration.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_app_bar.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_button_red.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_text_blue.dart';
import 'package:flutter/material.dart';

class ResetPasswordGetCodeEmail extends StatelessWidget {
  const ResetPasswordGetCodeEmail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context: context, designHeight: 778, designWidth: 360);

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const MainAppBar(
              myTitle: AppStrings.kResetPasswordProfileEditing,
              designHeight: 1006,
              designWidth: 360,
            ),
            SizedBox(height: AppDimensions.getDimensions(requiredHeight: 75),),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: AppDimensions.getDimensions(requiredWidth: 20)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const MainTextBlue(
                    myText: AppStrings.kForgetPasswordGetCodeEmailMainText,
                  ),
                  SizedBox(height: AppDimensions.getDimensions(requiredHeight:
                  11),),
        
                  const MainHintTextRegistration(
                    myText: AppStrings.kForgetPasswordGetCodeEmailHintText,
                  ),
                  SizedBox(height: AppDimensions.getDimensions(requiredHeight:
                  50),),
        
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
                        );
                      },
                    ),
                  ),
                  SizedBox(height: AppDimensions.getDimensions(requiredHeight:
                  18.67),),
        
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      MainHintTextRegistration(
                        myText: AppStrings.kForgetPasswordGetCodeHintText,
                        color: AppColors.kForgetPasswordGetCodeSecondHintText,
                      ),
                      MainHintTextRegistration(
                        myText: AppStrings.kForgetPasswordGetCodeSecondHintText,
                      ),
                    ],
                  ),
                  SizedBox(height: AppDimensions.getDimensions(requiredHeight:
                  18.33),),
        
                  MainButtonRed(
                    onPressed: () {
                      Navigator.pushNamed(

                          context, RoutesManager.setPasswordProfileEditing);

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
