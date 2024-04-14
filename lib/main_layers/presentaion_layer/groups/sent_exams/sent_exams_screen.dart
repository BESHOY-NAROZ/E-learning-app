import 'package:assiut_project/core/app_constants/app_assets.dart';
import 'package:assiut_project/core/app_constants/app_colors.dart';
import 'package:assiut_project/core/app_constants/app_strings.dart';
import 'package:assiut_project/core/app_dimensions.dart';
import 'package:assiut_project/main_layers/presentaion_layer/groups/shared_components_groups/app_bar_groups.dart';
import 'package:assiut_project/main_layers/presentaion_layer/groups/shared_components_groups/hint_text_groups.dart';
import 'package:assiut_project/main_layers/presentaion_layer/groups/shared_components_groups/main_text_groups.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_bottom_navigaton_bar.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_text_black.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_text_white.dart';
import 'package:flutter/material.dart';

import 'sent_exams_list.dart';

class SentExams extends StatelessWidget {
  const SentExams({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context: context, designHeight: 778, designWidth: 360);

    return Scaffold(
      bottomNavigationBar: const MainBottomNavigationBar(
        designHeight: 1006,
        designWidth: 360,
      ),
      body: Column(
        children: [
          const AppBarGroups(
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
                const MainTextGroups(
                  myText: AppStrings.kExamsSentToGroupGroups,
                ),
                SizedBox(
                  height: AppDimensions.getDimensions(requiredHeight: 3),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const HintTextGroups(
                      myText:
                          AppStrings.kBottomListGroupNumberHomeMainScreenHome,
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                    ),
                    SizedBox(
                      width: AppDimensions.getDimensions(requiredWidth: 4),
                    ),
                    const HintTextGroups(
                      myText: AppStrings.kBottomListFirstTextHomeMainScreenHome,
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                    ),
                  ],
                ),
                SizedBox(
                  height: AppDimensions.getDimensions(requiredHeight: 35),
                ),
                 SizedBox(
                   height: AppDimensions.getDimensions(requiredHeight: 530),
                   child: ListView.separated(
                       padding: EdgeInsets.zero,
                       itemBuilder: (context, index) {
                    return const ExamsSentList();
                                   }, separatorBuilder: (context, index) {
                    return SizedBox(height: AppDimensions.getDimensions
                      (requiredHeight: 15),);
                                   }, itemCount: 9),
                 )
              ],
            ),
          ),
        ],
      ),
    );
  }
}


