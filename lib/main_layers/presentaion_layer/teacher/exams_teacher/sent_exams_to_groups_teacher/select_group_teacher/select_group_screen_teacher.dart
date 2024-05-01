import 'package:assiut_project/core/app_constants/app_strings.dart';
import 'package:assiut_project/core/app_dimensions.dart';
import 'package:assiut_project/core/app_routes.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/custom_widgets/main_app_bar.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/custom_widgets/main_button_red.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/custom_widgets/main_text_black.dart';
import 'package:flutter/material.dart';

import 'students_groups_list_exams.dart';

class SelectGroupTeacher extends StatelessWidget {
  const SelectGroupTeacher({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context: context, designHeight: 778, designWidth: 360);
    return Scaffold(
      body: Column(
        children: [
          const MainAppBar(
            designHeight: 1006,
            designWidth: 360,
            myTitle: AppStrings.kSentExamsExams,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 26),
                    ),
                    const MainTextBlack(
                      myText: AppStrings.kSelectGroupExams,
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 18),
                    ),
                    ListView.separated(
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) {
                          return const StudentsGroupsListExams();
                        },
                        separatorBuilder: (context, index) {
                          return SizedBox(height: AppDimensions.getDimensions(requiredHeight: 16));
                        },
                        itemCount: 7),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 45),
                    ),
                    MainButtonRed(
                      buttonName: AppStrings.kSentButtonExams,
                      onPressed: () {
                        Navigator.pushNamed(context, RoutesManager.sentExamDoneTeacher);
                      },
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 25),
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
