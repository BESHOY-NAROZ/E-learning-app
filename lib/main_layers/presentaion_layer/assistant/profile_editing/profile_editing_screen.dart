import 'package:assiut_project/core/app_constants/app_colors.dart';
import 'package:assiut_project/core/app_constants/app_strings.dart';
import 'package:assiut_project/core/app_dimensions.dart';
import 'package:assiut_project/core/app_routes.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/custom_widgets/main_app_bar.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/custom_widgets/main_button_grey.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/custom_widgets/main_button_red.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/custom_widgets/main_text_blue.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/custom_widgets/main_text_grey.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/custom_widgets/text_form_filed.dart';
import 'package:flutter/material.dart';

import 'change_photo/change_photo.dart';

class ProfileEditing extends StatelessWidget {
  const ProfileEditing({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context: context, designHeight: 974, designWidth: 360);
    return Scaffold(
      body: Column(
        children: [
          const MainAppBar(
            designHeight: 1006,
            designWidth: 360,
            myTitle: AppStrings.kAppBarProfileEditing,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 27),
                    ),
                    MainTextBlue(
                      myText: AppStrings.kBasicInformationProfileEditing,
                      color: AppColors.kMainTextProfileEditing,
                      fontSize: AppDimensions.defaultSize * 18,
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 28),
                    ),
                    const ChangePhoto(),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 27),
                    ),
                    MainTextGrey(
                      myText: AppStrings.kFullNameProfileEditing,
                      fontSize: AppDimensions.defaultSize * 12,
                      color: AppColors.kDetailsProfileEditing,
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 8),
                    ),
                    CustomTextFormFiled(
                      hintText: AppStrings.kActualFullNameProfileEditing,
                      textDirection: TextDirection.rtl,
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
                      myText: AppStrings.kPhoneNumberProfileEditing,
                      fontSize: AppDimensions.defaultSize * 12,
                      color: AppColors.kDetailsProfileEditing,
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 8),
                    ),
                    CustomTextFormFiled(
                      hintText: AppStrings.kActualPhoneNumberProfileEditing,
                      textDirection: TextDirection.rtl,
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
                      myText: AppStrings.kGenderProfileEditing,
                      fontSize: AppDimensions.defaultSize * 12,
                      color: AppColors.kDetailsProfileEditing,
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 8),
                    ),
                    CustomTextFormFiled(
                      hintText: AppStrings.kActualGenderProfileEditing,
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
                      height: AppDimensions.getDimensions(requiredHeight: 24),
                    ),
                    MainTextBlue(
                      myText: AppStrings.kResetDataProfileEditing,
                      color: AppColors.kMainTextProfileEditing,
                      fontSize: AppDimensions.defaultSize * 18,
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 5),
                    ),
                    MainTextGrey(
                      myText: AppStrings.kChooseDataProfileEditing,
                      fontSize: AppDimensions.defaultSize * 12,
                      color: AppColors.kDetailsProfileEditing,
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 17),
                    ),
                    MainButtonGrey(
                      buttonName: AppStrings.kResetEmailProfileEditing,
                      onPressed: () {
                        Navigator.pushNamed(context, RoutesManager.resetEmail);
                      },
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 10),
                    ),
                    MainButtonGrey(
                      buttonName: AppStrings.kResetPasswordProfileEditing,
                      onPressed: () {
                        Navigator.pushNamed(context, RoutesManager.setPasswordProfileEditing);
                      },
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 10),
                    ),
                    MainButtonGrey(
                      buttonName: AppStrings.kAddNewNumberProfileEditing,
                      onPressed: () {
                        Navigator.pushNamed(context, RoutesManager.addNewNumber);
                      },
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 33),
                    ),
                    MainButtonRed(
                      buttonName: AppStrings.kEditProfileEditing,
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
