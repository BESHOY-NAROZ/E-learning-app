import 'package:assiut_project/core/app_constants/app_assets.dart';
import 'package:assiut_project/core/app_constants/app_colors.dart';
import 'package:assiut_project/core/app_constants/app_strings.dart';
import 'package:assiut_project/core/app_dimensions.dart';
import 'package:assiut_project/core/app_routes.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_app_bar.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_button_red.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_text_black.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_text_grey.dart';
import 'package:assiut_project/main_layers/presentaion_layer/teacher/add_question_teacher/question_type_teacher/question_type_bottom_sheet.dart';
import 'package:flutter/material.dart';

class QuestionTypeTeacher extends StatelessWidget {
  const QuestionTypeTeacher({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context: context, designHeight: 778, designWidth: 360);
    return Scaffold(
      body: Column(
        children: [
          const MainAppBar(
            designHeight: 1006,
            designWidth: 360,
            myTitle: AppStrings.kAddQuestion,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 33),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const MainTextBlack(
                          myText: AppStrings.kTheQuestionAddQuestion,
                          fontSize: 16,
                        ),
                        SizedBox(
                          width: AppDimensions.getDimensions(requiredWidth: 6),
                        ),
                        Image.asset(
                          AppAssets.kAddQuestion,
                          height: AppDimensions.getDimensions(requiredHeight: 22),
                          width: AppDimensions.getDimensions(requiredWidth: 22),
                        )
                      ],
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 6),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.only(right: AppDimensions.getDimensions(requiredWidth: 18)),
                      child: const MainTextGrey(
                        myText: AppStrings.kSpecificFirstTestCreateExam,
                        color: AppColors.kMainGery8D,
                        textDirection: TextDirection.rtl,
                        fontSize: 10,
                      ),
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 28),
                    ),
                    const MainTextGrey(
                      myText: AppStrings.kQuestionTypeAddQuestion,
                      color: AppColors.kMainGery7A,
                      fontSize: 12,
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 8),
                    ),
                    const QuestionTypeBottomSheet(),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 342),
                    ),
                    MainButtonRed(
                      buttonName: AppStrings.kResumptionCreateExam,
                      onPressed: () {
                        Navigator.pushNamed(context, RoutesManager.addSpecificQuestionTypeTeacher);
                      },
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
