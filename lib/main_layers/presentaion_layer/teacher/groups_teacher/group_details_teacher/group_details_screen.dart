import 'package:assiut_project/core/app_constants/app_colors.dart';
import 'package:assiut_project/core/app_constants/app_strings.dart';
import 'package:assiut_project/core/app_dimensions.dart';
import 'package:assiut_project/core/app_routes.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_app_bar.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_button_grey.dart';
import 'package:flutter/material.dart';

import 'every_student_in_group_teacher/every_student_in_group.dart';
import 'more_row_groups.dart';

class GroupDetailsTeacher extends StatelessWidget {
  const GroupDetailsTeacher({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context: context, designHeight: 778, designWidth: 360);
    return Scaffold(
      // bottomNavigationBar:  const MainBottomNavigationBar(
      //   designHeight: 1006,
      //   designWidth: 360,
      //
      // ),
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
              children: [
                SizedBox(
                  height: AppDimensions.getDimensions(requiredHeight: 25),
                ),
                const MoreRowGroupsTeacher(),
                SizedBox(
                  height: AppDimensions.getDimensions(requiredHeight: 27),
                ),
                SizedBox(
                  height: AppDimensions.getDimensions(requiredHeight: 280),
                  child: ListView.builder(
                    padding: EdgeInsets.zero,
                    itemCount: 3,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context, index) {
                      return InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, RoutesManager.studentProfileTeacher);
                          },
                          child: const EveryStudentInGroupListTeacher());
                    },
                  ),
                ),
                SizedBox(
                  height: AppDimensions.getDimensions(requiredHeight: 80),
                ),
                MainButtonGrey(
                  buttonName: AppStrings.kGroupStatisticsButtonGroups,
                  color: AppColors.kMainGery6E,
                  onPressed: () {
                    Navigator.pushNamed(context, RoutesManager.groupStatisticsTeacher);
                  },
                ),
                SizedBox(height: AppDimensions.getDimensions(requiredHeight: 12)),
                MainButtonGrey(
                  buttonName: AppStrings.kSentExamsGroups,
                  color: AppColors.kMainGery6E,
                  onPressed: () {
                    Navigator.pushNamed(context, RoutesManager.sentExamsTeacher);
                  },
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
