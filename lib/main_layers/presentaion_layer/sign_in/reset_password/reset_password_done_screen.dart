import 'package:assiut_project/core/app_constants/app_assets.dart';
import 'package:assiut_project/core/app_constants/app_colors.dart';
import 'package:assiut_project/core/app_constants/app_strings.dart';
import 'package:assiut_project/core/app_dimensions.dart';
import 'package:assiut_project/core/app_routes.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_button.dart';
import 'package:assiut_project/main_layers/presentaion_layer/sign_in/shared_components_signin/forget_password_main_Text.dart';
import 'package:flutter/material.dart';

class ResetPasswordDone extends StatelessWidget {
  const ResetPasswordDone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context: context, designHeight: 778, designWidth: 360);
    return  Scaffold(
      body: Column(
        children: [
          const Icon(Icons.close_rounded,
          size: 20,
            weight: 100
            ,color: AppColors.kResetPasswordDone,
          ),
          SizedBox(
              height: AppDimensions.getDimensions(requiredHeight: 154),
              width: AppDimensions.getDimensions(requiredWidth: 154),
              child: Image.asset(AppAssets.kCorrect)),
          const ForgetPasswordMainText(myText: AppStrings
              .kResetPasswordDoneMainText,),
      const Text(
        AppStrings.kResetPasswordDoneHintText
        ,
        style:  TextStyle(
            fontFamily: 'Almarai',
            color: AppColors.kSignInMainHintText,
            fontWeight: FontWeight.w400,
            fontSize: 14),
      ),
          CustomMainButton(
            text: AppStrings.kResetPasswordDoneMainButtonText,
            onPressed: () {
              Navigator.pushReplacementNamed(context, RoutesManager.loginScreen);

            },
          )
        ],
      ),
    );
  }
}
