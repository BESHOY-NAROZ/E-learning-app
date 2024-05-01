import 'package:assiut_project/core/app_constants/app_colors.dart';
import 'package:assiut_project/core/app_constants/app_strings.dart';
import 'package:assiut_project/core/app_dimensions.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/custom_widgets/main_app_bar.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/custom_widgets/main_text_black.dart';
import 'package:assiut_project/main_layers/presentaion_layer/teacher/groups_teacher/group_details_teacher/four_buttons.dart';
import 'package:flutter/material.dart';

import 'every_student_in_group_teacher/every_student_in_group.dart';
import 'group_number.dart';

class GroupDetailsTeacher extends StatelessWidget {
  const GroupDetailsTeacher({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context: context, designHeight: 778, designWidth: 360);
    return Scaffold(
      body: Column(
        children: [
          const MainAppBar(
            designHeight: 1006,
            designWidth: 360,
            myTitle: AppStrings.kAppBarTitleGroupsStudentGroups,
          ),
          Padding(
            padding:
                EdgeInsets.symmetric(horizontal: AppDimensions.getDimensions(requiredWidth: 20)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SizedBox(
                  height: AppDimensions.getDimensions(requiredHeight: 25),
                ),
                const GroupNumberTeacher(),
                SizedBox(
                  height: AppDimensions.getDimensions(requiredHeight: 24),
                ),
                const FourButtonsGroups(),
                SizedBox(
                  height: AppDimensions.getDimensions(requiredHeight: 26),
                ),
                MainTextBlack(
                  myText: AppStrings.kStudentsGroups,
                  color: AppColors.kMainBlack,
                  fontSize: AppDimensions.defaultSize * 16,
                ),
                SizedBox(
                  height: AppDimensions.getDimensions(requiredHeight: 8),
                ),
                SizedBox(
                  height: AppDimensions.getDimensions(requiredHeight: 280),
                  child: ListView.builder(
                    padding: EdgeInsets.zero,
                    itemCount: 3,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context, index) {
                      return const EveryStudentInGroupListTeacher();
                    },
                  ),
                ),
                SizedBox(
                  height: AppDimensions.getDimensions(requiredHeight: 80),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
