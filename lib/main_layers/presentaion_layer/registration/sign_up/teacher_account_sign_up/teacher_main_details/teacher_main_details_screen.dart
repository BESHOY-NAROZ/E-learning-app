import 'package:assiut_project/core/app_constants/app_colors.dart';
import 'package:assiut_project/core/app_constants/app_strings.dart';
import 'package:assiut_project/core/app_dimensions.dart';
import 'package:assiut_project/core/app_routes.dart';
import 'package:assiut_project/main_layers/presentaion_layer/registration/sign_in/shared_components_signin/main_hint_text_registration.dart';
import 'package:assiut_project/main_layers/presentaion_layer/registration/sign_up/shared_components_signup/bottom_text_signup.dart';
import 'package:assiut_project/main_layers/presentaion_layer/registration/sign_up/teacher_account_sign_up/teacher_main_details/teacher_gender_toggle.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_add_small_button.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_app_bar.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_button_grey.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_button_red.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_text_blue.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_text_grey.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/text_form_filed.dart';
import 'package:flutter/material.dart';

import 'change_photo.dart';
import 'password_validation.dart';

class TeacherMainDetails extends StatelessWidget {
  const TeacherMainDetails({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context: context, designHeight: 778, designWidth: 360);

    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          const MainAppBar(
            designHeight: 1006,
            designWidth: 360,
            myTitle: AppStrings.kTeacherSignUp,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 30),
                    ),
                    MainTextBlue(
                      myText: AppStrings.kMainDetailsSignUp,
                      fontSize: AppDimensions.defaultSize * 18,
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 4),
                    ),
                    const MainHintTextRegistration(
                      myText: AppStrings.kAssistantHintSignUp,
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 30),
                    ),
                    const ChangePhotoSignUp(),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 35),
                    ),
                    MainTextGrey(
                      myText: AppStrings.kFullNameSignUp,
                      fontSize: AppDimensions.defaultSize * 12,
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 8),
                    ),
                    CustomTextFormFiled(
                      hintText: AppStrings.kActualFullNameSignUp,
                      textDirection: TextDirection.rtl,
                      hintStyle: TextStyle(
                        fontSize: AppDimensions.defaultSize * 14,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Almarai',
                        color: AppColors.kDetailsProfileEditing,
                      ),
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 16),
                    ),
                    MainTextGrey(
                      myText: AppStrings.kPhoneNumberSignUp,
                      fontSize: AppDimensions.defaultSize * 12,
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 8),
                    ),
                    CustomTextFormFiled(
                      hintText: AppStrings.kActualPhoneNumberSignUp,
                      textDirection: TextDirection.ltr,
                      textAlign: TextAlign.start,
                      hintStyle: TextStyle(
                        fontSize: AppDimensions.defaultSize * 14,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Almarai',
                        color: AppColors.kDetailsProfileEditing,
                      ),
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 16),
                    ),
                    MainTextGrey(
                      myText: AppStrings.kBirthDateSignUp,
                      fontSize: AppDimensions.defaultSize * 12,
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 8),
                    ),
                    CustomTextFormFiled(
                      hintText: AppStrings.kActualBirthDateSignUp,
                      textDirection: TextDirection.rtl,
                      prefixIcon: Icon(Icons.arrow_left_rounded),
                      enabled: false,
                      hintStyle: TextStyle(
                        fontSize: AppDimensions.defaultSize * 12,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Almarai',
                        color: AppColors.kDetailsProfileEditing,
                      ),
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 16),
                    ),
                    MainTextGrey(
                      myText: AppStrings.kEmailSignUp,
                      fontSize: AppDimensions.defaultSize * 12,
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 8),
                    ),
                    CustomTextFormFiled(
                      hintText: AppStrings.kActualEmailSignUp,
                      textDirection: TextDirection.ltr,
                      textAlign: TextAlign.start,
                      hintStyle: TextStyle(
                        fontSize: AppDimensions.defaultSize * 14,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Almarai',
                        color: AppColors.kDetailsProfileEditing,
                      ),
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 16),
                    ),
                    MainTextGrey(
                      myText: AppStrings.kPasswordSignUp,
                      fontSize: AppDimensions.defaultSize * 12,
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 8),
                    ),
                    CustomTextFormFiled(
                      hintText: AppStrings.kResetPasswordHintFormFiled,
                      textDirection: TextDirection.ltr,
                      textAlign: TextAlign.end,
                      obscureText: true,
                      hintStyle: TextStyle(
                        fontSize: AppDimensions.defaultSize * 14,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Almarai',
                        color: AppColors.kDetailsProfileEditing,
                      ),
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 7),
                    ),
                    const PasswordValidation(),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 16),
                    ),
                    MainTextGrey(
                      myText: AppStrings.kConfirmPasswordSignUp,
                      fontSize: AppDimensions.defaultSize * 12,
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 8),
                    ),
                    CustomTextFormFiled(
                      hintText: AppStrings.kResetPasswordHintFormFiled,
                      textDirection: TextDirection.rtl,
                      obscureText: true,
                      hintStyle: TextStyle(
                        fontSize: AppDimensions.defaultSize * 12,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Almarai',
                        color: AppColors.kDetailsProfileEditing,
                      ),
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 16),
                    ),
                    MainTextGrey(
                      myText: AppStrings.kGenderSignUp,
                      fontSize: AppDimensions.defaultSize * 12,
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 8),
                    ),
                    const TeacherGenderToggleButton(),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 30),
                    ),
                    MainTextBlue(
                      myText: AppStrings.kMainEducationDetailsSignUp,
                      fontSize: AppDimensions.defaultSize * 18,
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 4),
                    ),
                    const MainHintTextRegistration(
                      myText: AppStrings.kHintEducationDetailsSignUp,
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 16),
                    ),
                    MainTextGrey(
                      myText: AppStrings.kEducationTypeSignUp,
                      fontSize: AppDimensions.defaultSize * 12,
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 8),
                    ),
                    CustomTextFormFiled(
                      hintText: AppStrings.kActualEducationTypeSignUp,
                      textDirection: TextDirection.rtl,
                      prefixIcon: Icon(Icons.arrow_left_rounded),
                      enabled: false,
                      hintStyle: TextStyle(
                        fontSize: AppDimensions.defaultSize * 12,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Almarai',
                        color: AppColors.kDetailsProfileEditing,
                      ),
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 16),
                    ),
                    MainTextGrey(
                      myText: AppStrings.kLevelSignUp,
                      fontSize: AppDimensions.defaultSize * 12,
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 8),
                    ),
                    CustomTextFormFiled(
                      hintText: AppStrings.kActualLevelSignUp,
                      textDirection: TextDirection.rtl,
                      prefixIcon: Icon(Icons.arrow_left_rounded),
                      enabled: false,
                      hintStyle: TextStyle(
                        fontSize: AppDimensions.defaultSize * 12,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Almarai',
                        color: AppColors.kDetailsProfileEditing,
                      ),
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 16),
                    ),
                    MainTextGrey(
                      myText: AppStrings.kClassSignUp,
                      fontSize: AppDimensions.defaultSize * 12,
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 8),
                    ),
                    CustomTextFormFiled(
                      hintText: AppStrings.kActualClassSignUp,
                      textDirection: TextDirection.rtl,
                      prefixIcon: Icon(Icons.arrow_left_rounded),
                      enabled: false,
                      hintStyle: TextStyle(
                        fontSize: AppDimensions.defaultSize * 12,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Almarai',
                        color: AppColors.kDetailsProfileEditing,
                      ),
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 16),
                    ),
                    MainTextGrey(
                      myText: AppStrings.kGovernmentSignUp,
                      fontSize: AppDimensions.defaultSize * 12,
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 8),
                    ),
                    CustomTextFormFiled(
                      hintText: AppStrings.kActualGovernmentSignUp,
                      textDirection: TextDirection.rtl,
                      prefixIcon: Icon(Icons.arrow_left_rounded),
                      enabled: false,
                      hintStyle: TextStyle(
                        fontSize: AppDimensions.defaultSize * 12,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Almarai',
                        color: AppColors.kDetailsProfileEditing,
                      ),
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 16),
                    ),
                    MainTextGrey(
                      myText: AppStrings.kStationSignUp,
                      fontSize: AppDimensions.defaultSize * 12,
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 8),
                    ),
                    CustomTextFormFiled(
                      hintText: AppStrings.kActualStationSignUp,
                      textDirection: TextDirection.rtl,
                      prefixIcon: Icon(Icons.arrow_left_rounded),
                      enabled: false,
                      hintStyle: TextStyle(
                        fontSize: AppDimensions.defaultSize * 12,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Almarai',
                        color: AppColors.kDetailsProfileEditing,
                      ),
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 16),
                    ),
                    MainTextGrey(
                      myText: AppStrings.kSchoolSignUp,
                      fontSize: AppDimensions.defaultSize * 12,
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 8),
                    ),
                    CustomTextFormFiled(
                      hintText: AppStrings.kActualSchoolSignUp,
                      textDirection: TextDirection.rtl,
                      prefixIcon: Icon(Icons.arrow_left_rounded),
                      enabled: false,
                      hintStyle: TextStyle(
                        fontSize: AppDimensions.defaultSize * 12,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Almarai',
                        color: AppColors.kDetailsProfileEditing,
                      ),
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 16),
                    ),
                    MainTextGrey(
                      myText: AppStrings.kWorkTypeSignUp,
                      fontSize: AppDimensions.defaultSize * 12,
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 8),
                    ),
                    CustomTextFormFiled(
                      hintText: AppStrings.kActualWorkTypeSignUp,
                      textDirection: TextDirection.rtl,
                      prefixIcon: Icon(Icons.arrow_left_rounded),
                      enabled: false,
                      hintStyle: TextStyle(
                        fontSize: AppDimensions.defaultSize * 12,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Almarai',
                        color: AppColors.kDetailsProfileEditing,
                      ),
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 16),
                    ),
                    Row(
                      children: [
                        MainAddSmallButton(
                          myText: AppStrings.kAddSubjectSignUp,
                          onPressed: () {},
                        ),
                        const Spacer(),
                        const MainTextGrey(
                          myText: AppStrings.kSubjectsSignUp,
                          fontSize: 12,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 30),
                    ),
                    MainButtonGrey(
                      buttonName: AppStrings.kAddIDSignUp,
                      onPressed: () {
                        Navigator.pushNamed(context, RoutesManager.addIDTeacher);
                      },
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 20),
                    ),
                    MainButtonRed(
                      buttonName: AppStrings.kCreateAccountSignUp,
                      onPressed: () {
                        Navigator.pushNamed(context, RoutesManager.confirmAccountTeacher);
                      },
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 16),
                    ),
                    const BottomTextSignUp(),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 30),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
// AppStrings.kResetPasswordHintFormFiled,
