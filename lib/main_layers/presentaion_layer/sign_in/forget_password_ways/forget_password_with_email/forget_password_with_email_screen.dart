import 'package:assiut_project/core/app_constants/app_strings.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_button.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/text_form_filed.dart';
import 'package:assiut_project/main_layers/presentaion_layer/sign_in/shared_components_signin/forget_password_main_Text.dart';
import 'package:assiut_project/main_layers/presentaion_layer/sign_in/shared_components_signin/main_hint_text.dart';
import 'package:flutter/material.dart';

class ForgetPasswordWithEmail extends StatelessWidget {
   const ForgetPasswordWithEmail({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return const  Column(
        children: [

          ForgetPasswordMainText(
            myText: AppStrings.kForgetPasswordMainTextEmail,
          ),
          MainHintText(
            myText: AppStrings.kForgetPasswordHintTextEmail,
          ),
          CustomTextFormFiled(
            hintText: AppStrings.kForgetPasswordTextFormFiledHintEmail,
          ),
          CustomMainButton(
            text: AppStrings.kForgetPasswordMainButtonText,
          ),

        ],

    );

  }

}

