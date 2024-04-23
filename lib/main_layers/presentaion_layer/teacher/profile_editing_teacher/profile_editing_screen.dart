import 'package:assiut_project/core/app_constants/app_assets.dart';
import 'package:assiut_project/core/app_constants/app_colors.dart';
import 'package:assiut_project/core/app_constants/app_strings.dart';
import 'package:assiut_project/core/app_dimensions.dart';
import 'package:assiut_project/core/app_routes.dart';
import 'package:assiut_project/main_layers/presentaion_layer/registration/sign_in/shared_components_signin/main_hint_text_registration.dart';
import 'package:assiut_project/main_layers/presentaion_layer/registration/sign_up/teacher_account_sign_up/teacher_main_details/teacher_gender_toggle.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_add_small_button.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_app_bar.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_button_grey.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_button_red.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_text_black.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_text_blue.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_text_grey.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/text_form_filed.dart';
import 'package:flutter/material.dart';

import 'change_photo/change_photo.dart';

class ProfileEditingTeacher extends StatelessWidget {
  const ProfileEditingTeacher({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context: context, designHeight: 974, designWidth: 360);
    return Scaffold(
      body: Column(
        children: [
          const MainAppBar(
            designHeight: 1006,
            designWidth: 360,
            myTitle: AppStrings.kAppBarProfileEditingTeacher,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 35),
                    ),
                    const MainTextBlue(
                      myText: AppStrings.kBasicInformationProfileEditing,
                      color: AppColors.kMainTextProfileEditing,
                      fontSize: 18,
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 28),
                    ),
                    const ChangePhoto(),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 27),
                    ),
                    const MainTextGrey(
                      myText: AppStrings.kFullNameProfileEditing,
                      fontSize: 12,
                      color: AppColors.kDetailsProfileEditing,
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 8),
                    ),
                    const CustomTextFormFiled(
                      hintText: AppStrings.kActualFullNameProfileEditing,
                      textDirection: TextDirection.rtl,
                      hintStyle: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Almarai',
                        color: AppColors.kDetailsProfileEditing,
                      ),
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 16),
                    ),
                    const MainTextGrey(
                      myText: AppStrings.kPhoneNumberProfileEditing,
                      fontSize: 12,
                      color: AppColors.kDetailsProfileEditing,
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 8),
                    ),
                    const CustomTextFormFiled(
                      hintText: AppStrings.kActualPhoneNumberProfileEditing,
                      textDirection: TextDirection.rtl,
                      hintStyle: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Almarai',
                        color: AppColors.kDetailsProfileEditing,
                      ),
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 16),
                    ),
                    const TeacherGenderToggleButton(),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 35),
                    ),
                    const MainTextBlue(
                      myText: AppStrings.kMainEducationDetailsSignUp,
                      fontSize: 18,
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
                    const MainTextGrey(
                      myText: AppStrings.kEducationTypeSignUp,
                      fontSize: 12,
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 8),
                    ),
                    const CustomTextFormFiled(
                      hintText: AppStrings.kActualEducationTypeSignUp,
                      textDirection: TextDirection.rtl,
                      prefixIcon: Icon(Icons.arrow_left_rounded),
                      enabled: false,
                      hintStyle: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Almarai',
                        color: AppColors.kDetailsProfileEditing,
                      ),
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 16),
                    ),
                    const MainTextGrey(
                      myText: AppStrings.kClassSignUp,
                      fontSize: 12,
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 8),
                    ),
                    const CustomTextFormFiled(
                      hintText: AppStrings.kActualClassSignUp,
                      textDirection: TextDirection.rtl,
                      prefixIcon: Icon(Icons.arrow_left_rounded),
                      enabled: false,
                      hintStyle: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Almarai',
                        color: AppColors.kDetailsProfileEditing,
                      ),
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 16),
                    ),
                    const MainTextGrey(
                      myText: AppStrings.kSectionProfileEditingTeacher,
                      fontSize: 12,
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 8),
                    ),
                    const CustomTextFormFiled(
                      hintText: AppStrings.kActualSectionProfileEditingTeacher,
                      textDirection: TextDirection.rtl,
                      prefixIcon: Icon(Icons.arrow_left_rounded),
                      enabled: false,
                      hintStyle: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Almarai',
                        color: AppColors.kDetailsProfileEditing,
                      ),
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 16),
                    ),
                    const MainTextGrey(
                      myText: AppStrings.kGovernmentSignUp,
                      fontSize: 12,
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 8),
                    ),
                    const CustomTextFormFiled(
                      hintText: AppStrings.kActualGovernmentSignUp,
                      textDirection: TextDirection.rtl,
                      prefixIcon: Icon(Icons.arrow_left_rounded),
                      enabled: false,
                      hintStyle: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Almarai',
                        color: AppColors.kDetailsProfileEditing,
                      ),
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 16),
                    ),
                    const MainTextGrey(
                      myText: AppStrings.kStationSignUp,
                      fontSize: 12,
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 8),
                    ),
                    const CustomTextFormFiled(
                      hintText: AppStrings.kActualStationSignUp,
                      textDirection: TextDirection.rtl,
                      prefixIcon: Icon(Icons.arrow_left_rounded),
                      enabled: false,
                      hintStyle: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Almarai',
                        color: AppColors.kDetailsProfileEditing,
                      ),
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 16),
                    ),
                    const MainTextGrey(
                      myText: AppStrings.kSchoolSignUp,
                      fontSize: 12,
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 8),
                    ),
                    const CustomTextFormFiled(
                      hintText: AppStrings.kActualSchoolSignUp,
                      textDirection: TextDirection.rtl,
                      prefixIcon: Icon(Icons.arrow_left_rounded),
                      enabled: false,
                      hintStyle: TextStyle(
                        fontSize: 12,
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
                      height: AppDimensions.getDimensions(requiredHeight: 8),
                    ),
                    const SubjectsList(),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 35),
                    ),
                    const MainTextBlue(
                      myText: AppStrings.kResetDataProfileEditingTeacher,
                      fontSize: 18,
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 4),
                    ),
                    const MainHintTextRegistration(
                      myText: AppStrings.kChooseDataProfileEditingTeacher,
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 16),
                    ),
                    MainButtonGrey(
                      buttonName: AppStrings.kResetEmailProfileEditing,
                      onPressed: () {
                        Navigator.pushNamed(
                            context, RoutesManager.setEmailNowTeacher);
                      },
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 10),
                    ),
                    MainButtonGrey(
                      buttonName: AppStrings.kResetPasswordProfileEditing,
                      onPressed: () {
                        Navigator.pushNamed(context,
                            RoutesManager.setPasswordProfileEditingTeacher);
                      },
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 10),
                    ),
                    MainButtonGrey(
                      buttonName: AppStrings.kAddNewNumberProfileEditing,
                      onPressed: () {
                        Navigator.pushNamed(
                            context, RoutesManager.addNewNumber);
                      },
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 33),
                    ),
                    MainButtonRed(
                      buttonName: AppStrings.kSaveDataProfileEditingTeacher,
                      onPressed: () {},
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 30),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class SubjectsList extends StatelessWidget {
  const SubjectsList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context: context, designHeight: 974, designWidth: 360);
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Row(
          children: [
            Container(
              width: AppDimensions.getDimensions(requiredWidth: 94),
              height: AppDimensions.getDimensions(requiredHeight: 40),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: AppColors.kPhilosophyProfileEditing),
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: AppDimensions.getDimensions(requiredWidth: 6)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.close,
                      color: AppColors.kMainTextBlack,
                    ),
                    const MainTextBlack(
                      myText: AppStrings.kPhilosophyProfileEditingTeacher,
                      fontSize: 11,
                    ),
                    Image.asset(
                      AppAssets.kPhilosophy,
                      width: AppDimensions.getDimensions(requiredWidth: 20),
                      height: AppDimensions.getDimensions(requiredHeight: 20),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
        SizedBox(
          width: AppDimensions.getDimensions(requiredWidth: 10),
        ),
        Row(
          children: [
            Container(
              width: AppDimensions.getDimensions(requiredWidth: 94),
              height: AppDimensions.getDimensions(requiredHeight: 40),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: AppColors.kDynamicsProfileEditing),
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: AppDimensions.getDimensions(requiredWidth: 6)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.close,
                      color: AppColors.kMainTextBlack,
                    ),
                    const MainTextBlack(
                      myText: AppStrings.kDynamicsProfileEditingTeacher,
                      fontSize: 11,
                    ),
                    Image.asset(
                      AppAssets.kDynamics,
                      width: AppDimensions.getDimensions(requiredWidth: 20),
                      height: AppDimensions.getDimensions(requiredHeight: 20),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ],
    );
  }
}
