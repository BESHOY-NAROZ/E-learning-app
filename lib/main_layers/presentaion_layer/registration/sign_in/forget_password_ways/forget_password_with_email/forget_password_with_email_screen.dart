import 'package:assiut_project/core/app_constants/app_colors.dart';
import 'package:assiut_project/core/app_constants/app_strings.dart';
import 'package:assiut_project/core/app_dimensions.dart';
import 'package:assiut_project/core/app_routes.dart';
import 'package:assiut_project/main_layers/presentaion_layer/registration/sign_in/shared_components_signin/main_hint_text_registration.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_button_red.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_text_blue.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/text_form_filed.dart';
import 'package:flutter/material.dart';

class ForgetPasswordWithEmail extends StatefulWidget {
  const ForgetPasswordWithEmail({Key? key}) : super(key: key);

  static final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  static final TextEditingController emailController = TextEditingController();
  static bool validate = true;

  @override
  State<ForgetPasswordWithEmail> createState() => _ForgetPasswordWithEmailState();
}

class _ForgetPasswordWithEmailState extends State<ForgetPasswordWithEmail> {
  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context: context, designHeight: 778, designWidth: 360);
    return Form(
      key: ForgetPasswordWithEmail._formKey,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const MainTextBlue(
              myText: AppStrings.kForgetPasswordMainTextEmail,
            ),
            SizedBox(
              height: AppDimensions.getDimensions(requiredHeight: 9),
            ),
            const MainHintTextRegistration(
              myText: AppStrings.kForgetPasswordHintTextEmail,
            ),
            SizedBox(
              height: AppDimensions.getDimensions(requiredHeight: 16),
            ),
            if (!ForgetPasswordWithEmail.validate)
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        AppStrings.kForgetPasswordErrorFormFiled,
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          color: AppColors.kForgetPasswordErrorFormFiled,
                          fontSize: AppDimensions.defaultSize * 10,
                          fontFamily: 'Almarai',
                        ),
                      ),
                      SizedBox(
                        width: AppDimensions.getDimensions(requiredWidth: 7),
                      ),
                      const Icon(
                        Icons.cancel_rounded,
                        color: AppColors.kForgetPasswordErrorFormFiled,
                        size: 14,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: AppDimensions.getDimensions(requiredHeight: 5),
                  ),
                ],
              ),
            SizedBox(
              height: AppDimensions.getDimensions(requiredHeight: 45),
              width: AppDimensions.getDimensions(requiredWidth: 320),
              child: CustomTextFormFiled(
                hintText: AppStrings.kForgetPasswordTextFormFiledHintEmail,
                controller: ForgetPasswordWithEmail.emailController,
                keyboardType: TextInputType.emailAddress,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return '';
                  }
                  return null;
                },
              ),
            ),
            SizedBox(
              height: AppDimensions.getDimensions(requiredHeight: 13),
            ),
            MainButtonRed(
                buttonName: AppStrings.kForgetPasswordMainButtonText,
                onPressed: () {
                  if (ForgetPasswordWithEmail._formKey.currentState!.validate()) {
                    setState(() {
                      ForgetPasswordWithEmail.validate = true;
                    });
                    Navigator.pushNamed(context, RoutesManager.forgetPasswordGetCodeEmail);
                  } else {
                    setState(() {
                      ForgetPasswordWithEmail.validate = false;
                    });
                  }
                }),
          ],
        ),
      ),
    );
  }
}
