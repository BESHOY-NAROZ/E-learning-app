import 'package:assiut_project/core/app_constants/app_assets.dart';
import 'package:assiut_project/core/app_constants/app_colors.dart';
import 'package:assiut_project/core/app_constants/app_strings.dart';
import 'package:assiut_project/core/app_dimensions.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/custom_widgets/main_app_bar.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/custom_widgets/main_text_black.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/custom_widgets/separator.dart';
import 'package:flutter/material.dart';

import 'exams_grades.dart';
import 'exams_not_solved.dart';
import 'exams_solved.dart';

class StudentStatisticsTeacher extends StatelessWidget {
  const StudentStatisticsTeacher({Key? key}) : super(key: key);

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
          Expanded(
            child: Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: AppDimensions.getDimensions(requiredWidth: 20)),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 14),
                    ),
                    const MainTextBlack(
                      myText: AppStrings.kStudentStatisticsGroups,
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 18),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          AppStrings.kProfileStudentNameGroups,
                          style: TextStyle(
                              fontFamily: 'Almarai',
                              color: AppColors.kStudentNameGroups,
                              fontWeight: FontWeight.w700,
                              fontSize: AppDimensions.defaultSize * 20),
                        ),
                        SizedBox(
                          width: AppDimensions.getDimensions(requiredWidth: 14),
                        ),
                        Container(
                          height: AppDimensions.getDimensions(requiredHeight: 70),
                          width: AppDimensions.getDimensions(requiredHeight: 70),
                          decoration: const BoxDecoration(shape: BoxShape.circle),
                          child: Image.asset(AppAssets.kStudentGroupsScreen, fit: BoxFit.fill),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 17),
                    ),
                    const ExamsGrades(),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 22),
                    ),
                    const Separator(),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 17),
                    ),
                    const ExamsNotSolved(),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 22),
                    ),
                    const Separator(),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 17),
                    ),
                    const ExamsSolved(),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 22),
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
