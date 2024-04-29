import 'package:assiut_project/core/app_constants/app_colors.dart';
import 'package:assiut_project/core/app_constants/app_strings.dart';
import 'package:assiut_project/core/app_dimensions.dart';
import 'package:assiut_project/core/app_routes.dart';
import 'package:assiut_project/main_layers/presentaion_layer/assistant/groups/shared_components_groups/hint_text_groups.dart';
import 'package:assiut_project/main_layers/presentaion_layer/assistant/groups/shared_components_groups/main_text_groups.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_app_bar.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_button_red.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/text_form_filed.dart';
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
                  height: AppDimensions.getDimensions(requiredHeight: 7),
                ),
                const MainTextGroups(
                  myText: AppStrings.kCreateGroupGroups,
                ),
                SizedBox(
                  height: AppDimensions.getDimensions(requiredHeight: 20),
                ),
                HintTextGroups(
                  myText: AppStrings.kCreateGroupHintTextGroups,
                  fontWeight: FontWeight.w700,
                  fontSize: AppDimensions.defaultSize * 16,
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
                HintTextGroups(
                  myText: AppStrings.kEducationalLevelHintTextGroups,
                  fontWeight: FontWeight.w700,
                  fontSize: AppDimensions.defaultSize * 16,
                ),
                SizedBox(
                  height: AppDimensions.getDimensions(requiredHeight: 8),
                ),
                CustomTextFormFiled(
                  hintText: AppStrings.kHighSchoolHintTextFormGroups,
                  textDirection: TextDirection.rtl,
                  prefixIcon: Icon(Icons.arrow_left_rounded),
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
                HintTextGroups(
                  myText: AppStrings.kClassRoomHintTextGroups,
                  fontWeight: FontWeight.w700,
                  fontSize: AppDimensions.defaultSize * 16,
                ),
                SizedBox(
                  height: AppDimensions.getDimensions(requiredHeight: 8),
                ),
                CustomTextFormFiled(
                  hintText: AppStrings.kClassRoomHintTextFiledGroups,
                  textDirection: TextDirection.rtl,
                  prefixIcon: Icon(Icons.arrow_left_rounded),
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
                HintTextGroups(
                  myText: AppStrings.kSubjectsHintTextGroups,
                  fontWeight: FontWeight.w700,
                  fontSize: AppDimensions.defaultSize * 16,
                ),
                SizedBox(
                  height: AppDimensions.getDimensions(requiredHeight: 8),
                ),
                CustomTextFormFiled(
                  hintText: AppStrings.kSubjectsTextFiledGroups,
                  textDirection: TextDirection.rtl,
                  prefixIcon: Icon(Icons.arrow_left_rounded),
                  enabled: false,
                  hintStyle: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: AppColors.kFormFiledHint,
                    fontSize: AppDimensions.defaultSize * 12,
                    fontFamily: 'Almarai',
                  ),
                ),
                SizedBox(
                  height: AppDimensions.getDimensions(requiredHeight: 112),
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
