import 'package:assiut_project/core/app_constants/app_strings.dart';
import 'package:assiut_project/core/app_dimensions.dart';
import 'package:assiut_project/core/app_routes.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/custom_widgets/main_app_bar.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/custom_widgets/main_button_red.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/custom_widgets/main_text_blue.dart';
import 'package:assiut_project/main_layers/presentaion_layer/teacher/add_question_teacher/exams_created_teacher/exams_created_list.dart';
import 'package:flutter/material.dart';

class ExamsCreatedTeacher extends StatelessWidget {
  const ExamsCreatedTeacher({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context: context, designHeight: 778, designWidth: 360);
    return Scaffold(
      body: Column(
        children: [
          const MainAppBar(
            designHeight: 1006,
            designWidth: 360,
            myTitle: AppStrings.kExamsCreatedExams,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 16),
                    ),
                    const MainTextBlue(
                      myText: AppStrings.kExamsCreatedExams,
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 18),
                    ),
                    ListView.separated(
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        padding: EdgeInsets.zero,
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) {
                          return const ExamsCreatedListTeacher();
                        },
                        separatorBuilder: (context, index) {
                          return SizedBox(height: AppDimensions.getDimensions(requiredHeight: 20));
                        },
                        itemCount: 7),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 59),
                    ),
                    MainButtonRed(
                      buttonName: AppStrings.kSendTheQuestion,
                      onPressed: () {
                        Navigator.pushNamed(context, RoutesManager.sentCreatedDoneTeacher);
                      },
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 27),
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
