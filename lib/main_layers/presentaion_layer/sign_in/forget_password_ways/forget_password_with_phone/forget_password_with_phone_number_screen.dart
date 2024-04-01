import 'package:assiut_project/core/app_constants/app_strings.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_button.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/text_form_filed.dart';
import 'package:assiut_project/main_layers/presentaion_layer/sign_in/shared_components_signin/forget_password_main_Text.dart';
import 'package:assiut_project/main_layers/presentaion_layer/sign_in/shared_components_signin/main_hint_text.dart';
import 'package:flutter/material.dart';

class ForgetPasswordWithPhoneNumber extends StatelessWidget {
   const ForgetPasswordWithPhoneNumber({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return const Column(
        children: [

          ForgetPasswordMainText(
            myText: AppStrings.kForgetPasswordMainTextPhone,
          ),
          MainHintText(
            myText: AppStrings.kForgetPasswordHintTextPhone,
          ),
          CustomTextFormFiled(
            hintText: AppStrings.kForgetPasswordTextFormFiledHintPhone,
          ),
          CustomMainButton(
            text: AppStrings.kForgetPasswordMainButtonText,
          ),

        ],

    );

  }



}

//static int myIndex = 0;
//    static List<Widget> kForgetPasswordWays() {
//      return [
//        Container(
//          height: AppDimensions.getDimensions(requiredHeight: 34.16),
//          width: AppDimensions.getDimensions(requiredWidth: 99.94),
//          decoration: BoxDecoration(
//              color: myIndex == 0
//                  ? AppColors.kForgetPasswordToggleSelectedButtonColor
//                  : AppColors.kForgetPasswordToggleButtonColor,
//              borderRadius: BorderRadius.circular(10)),
//          child: MaterialButton(
//            child: Text(
//              AppStrings.kForgetPasswordButtonEmail,
//              style: TextStyle(
//                fontWeight: FontWeight.w700,
//                color: myIndex == 0
//                    ? AppColors.kForgetPasswordToggleSelectedButtonText
//                    : AppColors.kForgetPasswordToggleButtonText,
//                fontSize: 12,
//                fontFamily: 'Almarai',
//              ),
//            ),
//            onPressed: () {
//              myIndex = 0;
//            },
//          ),
//        ),
//        Container(
//          height: AppDimensions.getDimensions(requiredHeight: 34.16),
//          width: AppDimensions.getDimensions(requiredWidth: 99.94),
//          decoration: BoxDecoration(
//              color: myIndex == 1
//                  ? AppColors.kForgetPasswordToggleButtonColor
//                  : AppColors.kForgetPasswordToggleSelectedButtonColor,
//              borderRadius: BorderRadius.circular(10)),
//          child: MaterialButton(
//            child: Text(
//              AppStrings.kForgetPasswordButtonPhone,
//              style: TextStyle(
//                fontWeight: FontWeight.w700,
//                color: myIndex == 1
//                    ? AppColors.kForgetPasswordToggleButtonText
//                    : AppColors.kForgetPasswordToggleSelectedButtonText,
//                fontSize: 12,
//                fontFamily: 'Almarai',
//              ),
//            ),
//            onPressed: () {
//              myIndex = 1;
//            },
//          ),
//        ),
//      ];
//    }