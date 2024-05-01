import 'package:assiut_project/core/app_constants/app_strings.dart';
import 'package:assiut_project/core/app_dimensions.dart';
import 'package:assiut_project/core/app_routes.dart';
import 'package:assiut_project/main_layers/presentaion_layer/registration/sign_in/shared_components_signin/main_hint_text_registration.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/custom_widgets/main_button_red.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/custom_widgets/main_text_blue.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/custom_widgets/text_form_filed.dart';
import 'package:flutter/material.dart';

class ResetPasswordWithPhoneNumber extends StatelessWidget {
  const ResetPasswordWithPhoneNumber({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context: context, designHeight: 778, designWidth: 360);

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          const MainTextBlue(
            myText: AppStrings.kForgetPasswordMainTextPhone,
          ),
          SizedBox(
            height: AppDimensions.getDimensions(requiredHeight: 9),
          ),
          const MainHintTextRegistration(
            myText: AppStrings.kForgetPasswordHintTextPhone,
          ),
          SizedBox(
            height: AppDimensions.getDimensions(requiredHeight: 16),
          ),
          const CustomTextFormFiled(
            hintText: AppStrings.kForgetPasswordTextFormFiledHintPhone,
            keyboardType: TextInputType.phone,
          ),
          SizedBox(
            height: AppDimensions.getDimensions(requiredHeight: 20),
          ),
          const MainHintTextRegistration(
            myText: AppStrings.kWriteOldPasswordProfileEditing,
          ),
          SizedBox(
            height: AppDimensions.getDimensions(requiredHeight: 16),
          ),
          const CustomTextFormFiled(
            obscureText: true,
            hintText: AppStrings.kResetPasswordHintFormFiled,
          ),
          SizedBox(
            height: AppDimensions.getDimensions(requiredHeight: 13),
          ),
          MainButtonRed(
            buttonName: AppStrings.kForgetPasswordMainButtonText,
            onPressed: () {
              Navigator.pushNamed(context, RoutesManager.resetPasswordGetCodePhoneNumber);
            },
          ),
        ],
      ),
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
