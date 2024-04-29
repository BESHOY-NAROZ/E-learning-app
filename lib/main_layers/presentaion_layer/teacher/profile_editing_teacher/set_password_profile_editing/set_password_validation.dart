import 'package:assiut_project/core/app_constants/app_colors.dart';
import 'package:assiut_project/core/app_constants/app_strings.dart';
import 'package:assiut_project/core/app_dimensions.dart';
import 'package:assiut_project/main_layers/presentaion_layer/registration/sign_in/shared_components_signin/main_hint_text_registration.dart';
import 'package:flutter/material.dart';

class SetPasswordValidationTeacher extends StatelessWidget {
  const SetPasswordValidationTeacher({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context: context, designHeight: 778, designWidth: 360);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        const MainHintTextRegistration(
          myText: AppStrings.kOldPassProfileEditingShared,
          textDirection: TextDirection.rtl,
        ),
        SizedBox(
          height: AppDimensions.getDimensions(requiredHeight: 9),
        ),
        SizedBox(
          height: AppDimensions.getDimensions(requiredHeight: 45),
          width: AppDimensions.getDimensions(requiredWidth: 320),
          child: TextFormField(
            obscureText: true,
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
          height: AppDimensions.getDimensions(requiredHeight: 30),
        ),
        const MainHintTextRegistration(
          myText: AppStrings.kNewPassProfileEditingShared,
          textDirection: TextDirection.rtl,
        ),
        SizedBox(
          height: AppDimensions.getDimensions(requiredHeight: 9),
        ),
        SizedBox(
          height: AppDimensions.getDimensions(requiredHeight: 45),
          width: AppDimensions.getDimensions(requiredWidth: 320),
          child: TextFormField(
            obscureText: true,
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
          height: AppDimensions.getDimensions(requiredHeight: 15),
        ),
        const MainHintTextRegistration(
          myText: AppStrings.kConfirmNewPassProfileEditingShared,
          textDirection: TextDirection.rtl,
        ),
        SizedBox(
          height: AppDimensions.getDimensions(requiredHeight: 9),
        ),
        SizedBox(
          height: AppDimensions.getDimensions(requiredHeight: 45),
          width: AppDimensions.getDimensions(requiredWidth: 320),
          child: TextFormField(
            obscureText: true,
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
        Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
          SizedBox(
            height: AppDimensions.getDimensions(requiredHeight: 9),
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
              SizedBox(
                width: AppDimensions.getDimensions(requiredWidth: 2),
              ),
              const Icon(
                Icons.check_circle_rounded,
                color: AppColors.kResetPasswordError,
                size: 14,
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
              SizedBox(
                width: AppDimensions.getDimensions(requiredWidth: 2),
              ),
              const Icon(
                Icons.cancel_rounded,
                color: AppColors.kResetPasswordError,
                size: 14,
              )
            ],
          ),
        ]),
      ],
    );
  }
}
