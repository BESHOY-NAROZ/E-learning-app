import 'package:assiut_project/core/app_constants/app_strings.dart';
import 'package:assiut_project/core/app_dimensions.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/custom_widgets/main_app_bar.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/custom_widgets/main_text_black.dart';
import 'package:assiut_project/main_layers/presentaion_layer/teacher/exams_teacher/correction%20_exams_teacher/correction%20_exams_teacher/correction_exams_list.dart';
import 'package:assiut_project/main_layers/presentaion_layer/teacher/exams_teacher/correction%20_exams_teacher/correction%20_exams_teacher/toggle_buttons_correction_teacher.dart';
import 'package:flutter/material.dart';

class CorrectionExamsTeacher extends StatelessWidget {
  const CorrectionExamsTeacher({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context: context, designHeight: 778, designWidth: 360);
    return Scaffold(
      body: Column(
        children: [
          const MainAppBar(
            designHeight: 1006,
            designWidth: 360,
            myTitle: AppStrings.kExamsSolvedExams,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 22),
                    ),
                    const MainTextBlack(
                      myText: AppStrings.kMainExamsSolvedExams,
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 35),
                    ),
                    const CustomToggleButtonCorrectionTeacher(),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 22),
                    ),
                    ListView.separated(
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        padding: EdgeInsets.zero,
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) {
                          return const CorrectionExamsListTeacher();
                        },
                        separatorBuilder: (context, index) {
                          return SizedBox(height: AppDimensions.getDimensions(requiredHeight: 20));
                        },
                        itemCount: 7),
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
