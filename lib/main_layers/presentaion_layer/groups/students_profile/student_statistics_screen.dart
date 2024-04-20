import 'package:assiut_project/core/app_constants/app_assets.dart';
import 'package:assiut_project/core/app_constants/app_colors.dart';
import 'package:assiut_project/core/app_constants/app_strings.dart';
import 'package:assiut_project/core/app_dimensions.dart';
import 'package:assiut_project/main_layers/presentaion_layer/groups/shared_components_groups/main_result_container.dart';
import 'package:assiut_project/main_layers/presentaion_layer/groups/students_profile/exams_grades.dart';
import 'package:assiut_project/main_layers/presentaion_layer/groups/students_profile/exams_not_solved.dart';
import 'package:assiut_project/main_layers/presentaion_layer/groups/students_profile/exams_solved.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_app_bar.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_bottom_navigaton_bar.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_text_black.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_text_green.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_text_grey.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/separator.dart';
import 'package:flutter/material.dart';

class StudentStatistics extends StatelessWidget {
  const StudentStatistics({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context: context, designHeight: 1108, designWidth: 360);

    return Scaffold(
      bottomNavigationBar:  const MainBottomNavigationBar(
        designHeight: 1006,
        designWidth: 360,
      ),
      body: Column(
        children: [
          const MainAppBar(
            designHeight: 1006,
            designWidth: 360,
            myTitle: AppStrings.kAppBarTitleGroupsStudentGroups,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: AppDimensions.getDimensions(requiredWidth: 20)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SizedBox(
                  height: AppDimensions.getDimensions(requiredHeight: 7),
                ),
                const MainTextBlack(
                  myText: AppStrings.kStudentStatisticsGroups,
                ),
                SizedBox(
                  height: AppDimensions.getDimensions(requiredHeight: 30),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Text(
                      AppStrings.kProfileStudentNameGroups,
                      style: TextStyle(
                          fontFamily: 'Almarai',
                          color: AppColors.kStudentNameGroups,
                          fontWeight: FontWeight.w700,
                          fontSize: 20),
                    ),
                    SizedBox(
                      width: AppDimensions.getDimensions(requiredWidth: 14),
                    ),
                    Container(
                      height: AppDimensions.getDimensions(requiredHeight: 70),
                      width: AppDimensions.getDimensions(requiredHeight: 70),
                      decoration: const BoxDecoration(shape: BoxShape.circle),
                      child: Image.asset(AppAssets.kStudentGroupsScreen,
                          fit: BoxFit.fill),
                    ),
                  ],
                ),
                SizedBox(
                  height: AppDimensions.getDimensions(requiredHeight: 17),
                ),
                const ExamsGrades(),
                const Separator(designWidth: 360,designHeight:1108 ,),
                SizedBox(
                  height: AppDimensions.getDimensions(requiredHeight: 17),
                ),
            const ExamsNotSolved(),
                const Separator(designWidth: 360,designHeight:1108 ,),
                SizedBox(
                  height: AppDimensions.getDimensions(requiredHeight: 17),
                ),
                const ExamsSolved()
              ],
            ),
          )
        ],
      ),
    );
  }
}


