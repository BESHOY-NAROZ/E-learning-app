import 'package:assiut_project/core/app_constants/app_colors.dart';
import 'package:assiut_project/core/app_constants/app_strings.dart';
import 'package:assiut_project/core/app_dimensions.dart';
import 'package:assiut_project/core/app_routes.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/custom_widgets/main_app_bar.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/custom_widgets/main_button_red.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/custom_widgets/main_text_grey.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/custom_widgets/text_form_filed.dart';
import 'package:flutter/material.dart';

class CreateGroupTeacher extends StatelessWidget {
  const CreateGroupTeacher({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context: context, designHeight: 778, designWidth: 360);
    return Scaffold(
      // bottomNavigationBar:  const MainBottomNavigationBar(
      //   designHeight: 1006,
      //   designWidth: 360,
      // ),
      body: Column(
        children: [
          const MainAppBar(
            designHeight: 1006,
            designWidth: 360,
            myTitle: AppStrings.kCreateGroupGroups,
          ),
          Padding(
            padding:
                EdgeInsets.symmetric(horizontal: AppDimensions.getDimensions(requiredWidth: 20)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SizedBox(
                  height: AppDimensions.getDimensions(requiredHeight: 40),
                ),
                MainTextGrey(
                  myText: AppStrings.kCreateGroupHintTextGroups,
                  fontSize: AppDimensions.defaultSize * 12,
                  color: AppColors.kMainGery7A,
                ),
                SizedBox(
                  height: AppDimensions.getDimensions(requiredHeight: 8),
                ),
                CustomTextFormFiled(
                  hintText: AppStrings.kCreateGroupHintTextFormGroups,
                  textDirection: TextDirection.rtl,
                  hintStyle: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: AppColors.kFormFiledHint,
                    fontSize: AppDimensions.defaultSize * 12,
                    fontFamily: 'Almarai',
                  ),
                ),
                SizedBox(
                  height: AppDimensions.getDimensions(requiredHeight: 16),
                ),
                MainTextGrey(
                  myText: AppStrings.kEducationalLevelHintTextGroups,
                  fontSize: AppDimensions.defaultSize * 12,
                  color: AppColors.kMainGery7A,
                ),
                SizedBox(
                  height: AppDimensions.getDimensions(requiredHeight: 8),
                ),
                CustomTextFormFiled(
                  hintText: AppStrings.kHighSchoolHintTextFormGroups,
                  textDirection: TextDirection.rtl,
                  prefixIcon: const Icon(Icons.arrow_left_rounded),
                  enabled: false,
                  hintStyle: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: AppColors.kFormFiledHint,
                    fontSize: AppDimensions.defaultSize * 12,
                    fontFamily: 'Almarai',
                  ),
                ),
                SizedBox(
                  height: AppDimensions.getDimensions(requiredHeight: 16),
                ),
                MainTextGrey(
                  myText: AppStrings.kClassRoomHintTextGroups,
                  fontSize: AppDimensions.defaultSize * 12,
                  color: AppColors.kMainGery7A,
                ),
                SizedBox(
                  height: AppDimensions.getDimensions(requiredHeight: 8),
                ),
                CustomTextFormFiled(
                  hintText: AppStrings.kClassRoomHintTextFiledGroups,
                  textDirection: TextDirection.rtl,
                  prefixIcon: const Icon(Icons.arrow_left_rounded),
                  enabled: false,
                  hintStyle: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: AppColors.kFormFiledHint,
                    fontSize: AppDimensions.defaultSize * 12,
                    fontFamily: 'Almarai',
                  ),
                ),
                SizedBox(
                  height: AppDimensions.getDimensions(requiredHeight: 16),
                ),
                MainTextGrey(
                  myText: AppStrings.kSubjectsHintTextGroups,
                  fontSize: AppDimensions.defaultSize * 12,
                  color: AppColors.kMainGery7A,
                ),
                SizedBox(
                  height: AppDimensions.getDimensions(requiredHeight: 8),
                ),
                CustomTextFormFiled(
                  hintText: AppStrings.kSubjectsTextFiledGroups,
                  textDirection: TextDirection.rtl,
                  prefixIcon: const Icon(Icons.arrow_left_rounded),
                  enabled: false,
                  hintStyle: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: AppColors.kFormFiledHint,
                    fontSize: AppDimensions.defaultSize * 12,
                    fontFamily: 'Almarai',
                  ),
                ),
                SizedBox(
                  height: AppDimensions.getDimensions(requiredHeight: 177),
                ),
                MainButtonRed(
                  buttonName: AppStrings.kCreationButtonTextGroups,
                  onPressed: () {
                    Navigator.pushNamed(context, RoutesManager.createGroupDoneTeacher);
                  },
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
//                  prefixIcon: Icon(Icons.arrow_left_rounded),
