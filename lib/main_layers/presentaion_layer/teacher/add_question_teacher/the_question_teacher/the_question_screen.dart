import 'package:assiut_project/core/app_constants/app_assets.dart';
import 'package:assiut_project/core/app_constants/app_colors.dart';
import 'package:assiut_project/core/app_constants/app_strings.dart';
import 'package:assiut_project/core/app_dimensions.dart';
import 'package:assiut_project/core/app_routes.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/custom_widgets/main_app_bar.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/custom_widgets/main_text_black.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/custom_widgets/main_text_grey.dart';
import 'package:assiut_project/main_layers/presentaion_layer/teacher/add_question_teacher/the_question_teacher/add_question_to_bottom_sheet.dart';
import 'package:assiut_project/main_layers/presentaion_layer/teacher/create_exam_teacher/exam_editing_teacher/delete_question_bottom_sheet.dart';
import 'package:flutter/material.dart';

import 'main_four_buttons_the_question.dart';
import 'question_select_answer_radio.dart';

class TheQuestionTeacher extends StatelessWidget {
  const TheQuestionTeacher({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context: context, designHeight: 778, designWidth: 360);
    return Scaffold(
      body: Column(
        children: [
          const MainAppBar(
            designHeight: 1006,
            designWidth: 360,
            myTitle: AppStrings.kTheQuestionAddQuestion,
          ),
          Container(
            height: AppDimensions.getDimensions(requiredHeight: 77),
            width: AppDimensions.getDimensions(requiredWidth: 360),
            color: AppColors.kMainGeryFA,
            padding:
                EdgeInsets.symmetric(horizontal: AppDimensions.getDimensions(requiredWidth: 20)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    MainTextBlack(
                      myText: AppStrings.kTheQuestionAddQuestion,
                      fontSize: AppDimensions.defaultSize * 16,
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
                  height: AppDimensions.getDimensions(requiredHeight: 3),
                ),
                MainTextGrey(
                  myText: AppStrings.kActualTestAddressExams,
                  fontSize: AppDimensions.defaultSize * 10,
                  fontWeight: FontWeight.w700,
                  color: AppColors.kMainGery8D,
                ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SingleChildScrollView(
                child: Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
                  SizedBox(
                    height: AppDimensions.getDimensions(requiredHeight: 14),
                  ),
                  MainTextBlack(
                    myText: AppStrings.kFirstQExams,
                    fontSize: AppDimensions.defaultSize * 16,
                    fontWeight: FontWeight.w400,
                  ),
                  SizedBox(
                    height: AppDimensions.getDimensions(requiredHeight: 20),
                  ),
                  MainTextGrey(
                    myText: AppStrings.kActualFirstQExams,
                    fontSize: AppDimensions.defaultSize * 14,
                    fontWeight: FontWeight.w400,
                  ),
                  SizedBox(
                    height: AppDimensions.getDimensions(requiredHeight: 14),
                  ),
                  const QuestionSelectAnswerRadio(),
                  SizedBox(
                    height: AppDimensions.getDimensions(requiredHeight: 18),
                  ),
                  Row(
                    children: [
                      const DeleteQuestionBottomSheet(),
                      SizedBox(
                        width: AppDimensions.getDimensions(requiredWidth: 9),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, RoutesManager.editQuestionsTeacher);
                        },
                        child: Container(
                          height: AppDimensions.getDimensions(requiredHeight: 45),
                          width: AppDimensions.getDimensions(requiredWidth: 156),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8), color: AppColors.kMainGeryFA),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const MainTextGrey(
                                myText: AppStrings.kEditExams,
                              ),
                              SizedBox(
                                width: AppDimensions.getDimensions(requiredWidth: 5),
                              ),
                              Image.asset(
                                AppAssets.kEdit,
                                color: AppColors.kMainTextBlack,
                                height: AppDimensions.getDimensions(requiredHeight: 20),
                                width: AppDimensions.getDimensions(requiredWidth: 20),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: AppDimensions.getDimensions(requiredHeight: 103),
                  ),
                  const MainFourButtonsTheQuestion(),
                  SizedBox(
                    height: AppDimensions.getDimensions(requiredHeight: 23),
                  ),
                  const AddTheQuestionToBottomSheet(),
                  SizedBox(
                    height: AppDimensions.getDimensions(requiredHeight: 32),
                  ),
                ]),
              ),
            ),
          )
        ],
      ),
    );
  }
}
