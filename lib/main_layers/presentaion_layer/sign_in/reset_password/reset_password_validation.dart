import 'package:assiut_project/core/app_constants/app_colors.dart';
import 'package:assiut_project/core/app_constants/app_strings.dart';
import 'package:assiut_project/core/app_dimensions.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_button.dart';
import 'package:flutter/material.dart';


class ResetPasswordValidation extends StatefulWidget {
  const ResetPasswordValidation({Key? key}) : super(key: key);

  static final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  static final TextEditingController passController = TextEditingController();
  static final TextEditingController confirmPassController =
  TextEditingController();
  static bool validate = true;

  @override
  State<ResetPasswordValidation> createState() => _ResetPasswordValidationState();
}

class _ResetPasswordValidationState extends State<ResetPasswordValidation> {
  @override
  Widget build(BuildContext context) {
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
                if (value == null ||
                    value.isEmpty ||
                    value.length < 6 ) {
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
                hintText: AppStrings.kResetPasswordHintFormFiled,
                hintStyle: const TextStyle(
                  fontWeight: FontWeight.w400,
                  color: AppColors.kFormFiledHint,
                  fontSize: 14,
                  fontFamily: 'Almarai',
                ),
              ),
            ),
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
                    borderSide: const BorderSide(
                        color: AppColors.kLoginFormFiledBorder)),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                hintText: AppStrings.kResetPasswordHintFormFiled,
                hintStyle: const TextStyle(
                  fontWeight: FontWeight.w400,
                  color: AppColors.kFormFiledHint,
                  fontSize: 14,
                  fontFamily: 'Almarai',
                ),
              ),
            ),
          ),
          if (!ResetPasswordValidation.validate)
         const Column(
           children: [   Row(
             children: [
               Text(
                 AppStrings.kResetPasswordFirstError,
                 style: TextStyle(
                   fontWeight: FontWeight.w700,
                   color: AppColors.kResetPasswordError,
                   fontSize: 10,
                   fontFamily: 'Almarai',
                 ),
               ),
               Icon(
                 Icons.check_circle_rounded,
                 color: AppColors.kResetPasswordError,
                 size: 14,
               )
             ],
           ),
             Row(
               children: [
                 Text(
                   AppStrings.kResetPasswordSecondError,
                   style: TextStyle(
                     fontWeight: FontWeight.w700,
                     color: AppColors.kResetPasswordError,
                     fontSize: 10,
                     fontFamily: 'Almarai',
                   ),
                 ),
                 Icon(
                   Icons.cancel_rounded,
                   color: AppColors.kResetPasswordError,
                   size: 14,
                 )
               ],
             ),
             Row(
               children: [
                 Text(
                   AppStrings.kResetPasswordThirdError,
                   style: TextStyle(
                     fontWeight: FontWeight.w700,
                     color: AppColors.kForgetPasswordErrorFormFiled,
                     fontSize: 10,
                     fontFamily: 'Almarai',
                   ),
                 ),
                 Icon(
                   Icons.cancel_rounded,
                   color: AppColors.kForgetPasswordErrorFormFiled,
                   size: 14,
                 )
               ],
             ),],
         ),
          CustomMainButton(
            text: AppStrings.kResetPasswordMainButtonText,
            onPressed: () {
              setState(() {
                if (!ResetPasswordValidation._formKey.currentState!.validate()) {
                  ResetPasswordValidation.validate = false;
                }
              });
            },
          ),
        ],
      ),
    );
  }
}
