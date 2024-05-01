import 'package:assiut_project/core/app_constants/app_colors.dart';
import 'package:assiut_project/core/app_constants/app_strings.dart';
import 'package:assiut_project/core/app_dimensions.dart';
import 'package:assiut_project/core/app_routes.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/custom_widgets/main_button_red.dart';
import 'package:flutter/material.dart';

class ResetPasswordValidation extends StatefulWidget {
  const ResetPasswordValidation({Key? key}) : super(key: key);

  static final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  static final TextEditingController passController = TextEditingController();
  static final TextEditingController confirmPassController = TextEditingController();
  static bool validate = true;

  @override
  State<ResetPasswordValidation> createState() => _ResetPasswordValidationState();
}

class _ResetPasswordValidationState extends State<ResetPasswordValidation> {
  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context: context, designHeight: 778, designWidth: 360);

    return Form(
      key: ResetPasswordValidation._formKey,
      child: Column(
        children: [
          SizedBox(
            height: AppDimensions.getDimensions(requiredHeight: 45),
            width: AppDimensions.getDimensions(requiredWidth: 320),
            child: TextFormField(
              obscureText: true,
              controller: ResetPasswordValidation.passController,
              validator: (value) {
                if (value == null || value.isEmpty || value.length < 6) {
                  return '';
                }
                return null;
              },
              decoration: InputDecoration(
                errorStyle: const TextStyle(height: 0),
                isDense: true,
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(color: AppColors.kLoginFormFiledBorder)),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                hintText: AppStrings.kResetPasswordHintFormFiled,
                hintStyle: TextStyle(
                  fontWeight: FontWeight.w400,
                  color: AppColors.kFormFiledHint,
                  fontSize: AppDimensions.defaultSize * 14,
                  fontFamily: 'Almarai',
                ),
              ),
            ),
          ),
          SizedBox(
            height: AppDimensions.getDimensions(requiredHeight: 9),
          ),
          SizedBox(
            height: AppDimensions.getDimensions(requiredHeight: 45),
            width: AppDimensions.getDimensions(requiredWidth: 320),
            child: TextFormField(
              obscureText: true,
              controller: ResetPasswordValidation.confirmPassController,
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
                    borderSide: const BorderSide(color: AppColors.kLoginFormFiledBorder)),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                hintText: AppStrings.kResetPasswordHintFormFiled,
                hintStyle: TextStyle(
                  fontWeight: FontWeight.w400,
                  color: AppColors.kFormFiledHint,
                  fontSize: AppDimensions.defaultSize * 14,
                  fontFamily: 'Almarai',
                ),
              ),
            ),
          ),
          if (!ResetPasswordValidation.validate)
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SizedBox(
                  height: AppDimensions.getDimensions(requiredHeight: 7),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      AppStrings.kResetPasswordFirstError,
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        color: AppColors.kResetPasswordError,
                        fontSize: AppDimensions.defaultSize * 10,
                        fontFamily: 'Almarai',
                      ),
                    ),
                    Icon(
                      Icons.check_circle_rounded,
                      color: AppColors.kResetPasswordError,
                      size: AppDimensions.defaultSize * 14,
                    )
                  ],
                ),
                SizedBox(
                  height: AppDimensions.getDimensions(requiredHeight: 4),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      AppStrings.kResetPasswordSecondError,
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        color: AppColors.kResetPasswordError,
                        fontSize: AppDimensions.defaultSize * 10,
                        fontFamily: 'Almarai',
                      ),
                    ),
                    Icon(
                      Icons.cancel_rounded,
                      color: AppColors.kResetPasswordError,
                      size: AppDimensions.defaultSize * 14,
                    )
                  ],
                ),
                SizedBox(
                  height: AppDimensions.getDimensions(requiredHeight: 4),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      AppStrings.kResetPasswordThirdError,
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        color: AppColors.kForgetPasswordErrorFormFiled,
                        fontSize: AppDimensions.defaultSize * 10,
                        fontFamily: 'Almarai',
                      ),
                    ),
                    Icon(
                      Icons.cancel_rounded,
                      color: AppColors.kForgetPasswordErrorFormFiled,
                      size: AppDimensions.defaultSize * 14,
                    )
                  ],
                ),
              ],
            ),
          SizedBox(
            height: AppDimensions.getDimensions(requiredHeight: 19),
          ),
          MainButtonRed(
            buttonName: AppStrings.kResetPasswordMainButtonText,
            onPressed: () {
              if (ResetPasswordValidation._formKey.currentState!.validate()) {
                setState(() {
                  ResetPasswordValidation.validate = true;
                });
                Navigator.pushNamed(context, RoutesManager.resetPasswordDone);
              } else {
                setState(() {
                  ResetPasswordValidation.validate = false;
                });
              }
            },
          ),
        ],
      ),
    );
  }
}
