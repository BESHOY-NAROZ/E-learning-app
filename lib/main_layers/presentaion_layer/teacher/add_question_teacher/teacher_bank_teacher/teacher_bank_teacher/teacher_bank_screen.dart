import 'package:assiut_project/core/app_constants/app_strings.dart';
import 'package:assiut_project/core/app_dimensions.dart';
import 'package:assiut_project/core/app_routes.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/custom_widgets/main_add_small_button.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/custom_widgets/main_app_bar.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/custom_widgets/main_text_black.dart';
import 'package:flutter/material.dart';

import 'teacher_bank_list.dart';

class TeacherBankTeacher extends StatelessWidget {
  const TeacherBankTeacher({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context: context, designHeight: 778, designWidth: 360);
    return Scaffold(
      body: Column(
        children: [
          const MainAppBar(
            designHeight: 1006,
            designWidth: 360,
            myTitle: AppStrings.kQuestionBankCreateExam,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 20),
                    ),
                    const MainTextBlack(
                      myText: AppStrings.kTeacherQuestionBankCreateExam,
                      textDirection: TextDirection.rtl,
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 8),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: MainAddSmallButton(
                        myText: AppStrings.kAddingQQuestion,
                        requiredWidth: 100,
                        onPressed: () {
                          Navigator.pushNamed(context, RoutesManager.addQuestionTeacher);
                        },
                      ),
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 16),
                    ),
                    ListView.separated(
                        shrinkWrap: true,
                        physics: const BouncingScrollPhysics(),
                        padding: EdgeInsets.zero,
                        itemBuilder: (context, index) {
                          return const TeacherBankList();
                        },
                        separatorBuilder: (context, index) {
                          return SizedBox(
                            height: AppDimensions.getDimensions(requiredHeight: 8),
                          );
                        },
                        itemCount: 9),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 23),
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
