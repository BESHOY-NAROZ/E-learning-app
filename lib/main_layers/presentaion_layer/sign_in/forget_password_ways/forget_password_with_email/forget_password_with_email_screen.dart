import 'package:assiut_project/core/app_constants/app_colors.dart';
import 'package:assiut_project/core/app_constants/app_strings.dart';
import 'package:assiut_project/core/app_dimensions.dart';
import 'package:assiut_project/core/app_routes.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_button.dart';
import 'package:assiut_project/main_layers/presentaion_layer/sign_in/shared_components_signin/forget_password_main_Text.dart';
import 'package:assiut_project/main_layers/presentaion_layer/sign_in/shared_components_signin/main_hint_text.dart';
import 'package:flutter/material.dart';

class ForgetPasswordWithEmail extends StatefulWidget {
  const ForgetPasswordWithEmail({Key? key}) : super(key: key);

  static final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  static final TextEditingController emailController = TextEditingController();
  static bool validate = true;

  @override
  State<ForgetPasswordWithEmail> createState() =>
      _ForgetPasswordWithEmailState();
}

class _ForgetPasswordWithEmailState extends State<ForgetPasswordWithEmail> {
  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context: context, designHeight: 778, designWidth: 360);
    return Form(
      key: ForgetPasswordWithEmail._formKey,
      child: Column(
        children: [
          const ForgetPasswordMainText(
            myText: AppStrings.kForgetPasswordMainTextEmail,
          ),
          const MainHintText(
            myText: AppStrings.kForgetPasswordHintTextEmail,
          ),
          if (!ForgetPasswordWithEmail.validate)
             const Row(
              children: [
                Text(
                  AppStrings.kForgetPasswordErrorFormFiled,
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: AppColors.kForgetPasswordErrorFormFiled,
                    fontSize: 10,
                    fontFamily: 'Almarai',
                  ),
                ),
                Icon(Icons.cancel_rounded,color: AppColors
                    .kForgetPasswordErrorFormFiled,size: 14,)
              ],
            ),
          SizedBox(
            height: AppDimensions.getDimensions(requiredHeight: 45),
            width: AppDimensions.getDimensions(requiredWidth: 320),
            child: TextFormField(
              keyboardType: TextInputType.emailAddress,
              controller: ForgetPasswordWithEmail.emailController,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return '';
                }
                return null;
              },
              decoration: InputDecoration(
                errorStyle: const TextStyle(height: 0),
                isDense: true,
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                        color: AppColors.kLoginFormFiledBorder)),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                hintText: AppStrings.kForgetPasswordTextFormFiledHintEmail,
                hintStyle: const TextStyle(
                  fontWeight: FontWeight.w400,
                  color: AppColors.kFormFiledHint,
                  fontSize: 14,
                  fontFamily: 'Almarai',
                ),
              ),
            ),
          ),
          CustomMainButton(
            text: AppStrings.kForgetPasswordMainButtonText,
            onPressed: () {
              Navigator.pushReplacementNamed(context, RoutesManager.forgetPasswordGetCodeEmail);

              setState(() {
                if (!ForgetPasswordWithEmail._formKey.currentState!
                    .validate()) {
                  ForgetPasswordWithEmail.validate = false;
                }
              });
            },
          ),
        ],
      ),
    );
  }
}
