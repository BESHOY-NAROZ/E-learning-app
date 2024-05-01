import 'package:assiut_project/core/app_constants/app_assets.dart';
import 'package:assiut_project/core/app_constants/app_colors.dart';
import 'package:assiut_project/core/app_constants/app_strings.dart';
import 'package:assiut_project/core/app_dimensions.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/custom_widgets/main_app_bar.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/custom_widgets/main_text_black.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/custom_widgets/main_text_grey.dart';
import 'package:assiut_project/main_layers/presentaion_layer/teacher/create_exam_teacher/question_classification_teacher/classification_bloom_bottom_sheet.dart';
import 'package:assiut_project/main_layers/presentaion_layer/teacher/create_exam_teacher/question_classification_teacher/classification_difficulty_bottom_sheet.dart';
import 'package:assiut_project/main_layers/presentaion_layer/teacher/shared_components_teacher/bottom_sheet_for_creation_question_teacher/bottom_sheet_for_creation_question_screen.dart';
import 'package:flutter/material.dart';

class QuestionClassificationTeacher extends StatelessWidget {
  const QuestionClassificationTeacher({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context: context, designHeight: 778, designWidth: 360);
    return Scaffold(
      body: Column(
        children: [
          const MainAppBar(
            designHeight: 1006,
            designWidth: 360,
            myTitle: AppStrings.kCreateExam,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 27),
                    ),
                    const MainTextBlack(
                      myText: AppStrings.kQuestionClassificationCreateExam,
                      fontSize: 16,
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 16),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const MainTextBlack(
                          myText: AppStrings.kFirstTestCreateExam,
                          fontSize: 16,
                        ),
                        SizedBox(
                            height: AppDimensions.getDimensions(requiredHeight: 24),
                            width: AppDimensions.getDimensions(requiredWidth: 24),
                            child: Image.asset(AppAssets.kExamVector))
                      ],
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 6),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.only(right: AppDimensions.getDimensions(requiredWidth: 24)),
                      child: const MainTextGrey(
                        myText: AppStrings.kSpecificFirstTestCreateExam,
                        color: AppColors.kMainGery8D,
                        fontSize: 10,
                      ),
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 28),
                    ),
                    const MainTextGrey(
                      myText: AppStrings.kDifficultyDegreeCreateExam,
                      fontSize: 12,
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 8),
                    ),
                    const DifficultyQuestionBottomSheet(),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 16),
                    ),
                    const MainTextGrey(
                      myText: AppStrings.kClassificationCreateExam,
                      fontSize: 12,
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 8),
                    ),
                    const BloomQuestionBottomSheet(),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 54),
                    ),
                    const BottomSheetForCreationQuestion(
                      buttonName: AppStrings.kAddQuestionsCreateExam,
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
