import 'package:assiut_project/core/app_constants/app_assets.dart';
import 'package:assiut_project/core/app_constants/app_colors.dart';
import 'package:assiut_project/core/app_constants/app_strings.dart';
import 'package:assiut_project/core/app_dimensions.dart';
import 'package:assiut_project/core/app_routes.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/custom_widgets/main_app_bar.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/custom_widgets/main_button_grey.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/custom_widgets/main_button_red.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/custom_widgets/main_text_black.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/custom_widgets/main_text_blue.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/custom_widgets/main_text_grey.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/custom_widgets/main_text_white.dart';
import 'package:assiut_project/main_layers/presentaion_layer/teacher/create_exam_teacher/exam_editing_teacher/delete_question_bottom_sheet.dart';
import 'package:assiut_project/main_layers/presentaion_layer/teacher/shared_components_teacher/bottom_sheet_for_creation_question_teacher/bottom_sheet_for_creation_question_screen.dart';
import 'package:flutter/material.dart';

import 'main_four_buttons_create_actual_exam.dart';
import 'select_answer_radio.dart';

class CreateActualExamTeacher extends StatelessWidget {
  const CreateActualExamTeacher({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context: context, designHeight: 778, designWidth: 360);
    return Scaffold(
      body: Column(
        children: [
          const MainAppBar(
            designHeight: 1006,
            designWidth: 360,
            myTitle: AppStrings.kPhilosophyTestExams,
          ),
          Container(
            height: AppDimensions.getDimensions(requiredHeight: 77),
            width: AppDimensions.getDimensions(requiredWidth: 360),
            color: AppColors.kMainGeryFA,
            padding:
                EdgeInsets.symmetric(horizontal: AppDimensions.getDimensions(requiredWidth: 20)),
            child: Row(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const MainTextGrey(
                      myText: AppStrings.kRemainingTimeExams,
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                      color: AppColors.kMainGery8D,
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 3),
                    ),
                    const MainTextGrey(
                      myText: AppStrings.kActualRemainingTimeExams,
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      color: AppColors.kMainGery8D,
                    ),
                  ],
                ),
                const Spacer(),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const MainTextBlack(
                          myText: AppStrings.kTestAddressExams,
                          fontSize: 16,
                        ),
                        SizedBox(
                            height: AppDimensions.getDimensions(requiredHeight: 24),
                            width: AppDimensions.getDimensions(requiredWidth: 24),
                            child: Image.asset(AppAssets.kExamVector))
                      ],
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 3),
                    ),
                    const MainTextGrey(
                      myText: AppStrings.kActualTestAddressExams,
                      fontSize: 10,
                      fontWeight: FontWeight.w700,
                      color: AppColors.kMainGery8D,
                    ),
                  ],
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
                  Row(
                    children: [
                      const MainTextBlue(
                        myText: AppStrings.kDegreeCreateExam,
                        color: AppColors.kMainBlueC4,
                        fontSize: 11,
                        fontWeight: FontWeight.w400,
                      ),
                      SizedBox(
                        width: AppDimensions.getDimensions(requiredWidth: 2),
                      ),
                      const MainTextBlue(
                        myText: AppStrings.kActualDegreeCreateExam,
                        color: AppColors.kMainBlueC4,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: AppDimensions.getDimensions(requiredHeight: 8),
                  ),
                  const MainTextBlack(
                    myText: AppStrings.kFirstQExams,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                  SizedBox(
                    height: AppDimensions.getDimensions(requiredHeight: 20),
                  ),
                  const MainTextGrey(
                    myText: AppStrings.kActualFirstQExams,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                  SizedBox(
                    height: AppDimensions.getDimensions(requiredHeight: 14),
                  ),
                  const SelectAnswerRadio(),
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
                  const MainFourButtonsCreateActualExam(),
                  SizedBox(
                    height: AppDimensions.getDimensions(requiredHeight: 40),
                  ),
                  Row(
                    children: [
                      const MainTextGrey(
                        myText: AppStrings.kQPercentageCreateExam,
                        color: AppColors.kMainGery8D,
                        textDirection: TextDirection.rtl,
                        fontSize: 10,
                      ),
                      SizedBox(
                        width: AppDimensions.getDimensions(requiredWidth: 24),
                      ),
                      Expanded(
                        child: RotatedBox(
                          quarterTurns: 90,
                          child: LinearProgressIndicator(
                            color: AppColors.kMainBlueC4,
                            backgroundColor: AppColors.kMainGeryFA,
                            value: 0.4,
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: AppDimensions.getDimensions(requiredHeight: 20),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: AppDimensions.getDimensions(requiredHeight: 45),
                        width: AppDimensions.getDimensions(requiredWidth: 156),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8), color: AppColors.kMainTextRed),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.arrow_back_ios_new_outlined,
                              color: AppColors.kMainTextWhite,
                            ),
                            SizedBox(
                              width: AppDimensions.getDimensions(requiredWidth: 5),
                            ),
                            const MainTextWhite(
                              myText: AppStrings.kNextQExams,
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: AppDimensions.getDimensions(requiredWidth: 9),
                      ),
                      Container(
                        height: AppDimensions.getDimensions(requiredHeight: 45),
                        width: AppDimensions.getDimensions(requiredWidth: 156),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8), color: AppColors.kMainGeryFA),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const MainTextGrey(
                              myText: AppStrings.kPreviousQuestionCreateExam,
                            ),
                            SizedBox(
                              width: AppDimensions.getDimensions(requiredWidth: 5),
                            ),
                            const Icon(
                              Icons.arrow_forward_ios_outlined,
                              color: AppColors.kMainGery96,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: AppDimensions.getDimensions(requiredHeight: 37),
                  ),
                  MainButtonRed(
                    buttonName: AppStrings.kSendExamCreateExam,
                    onPressed: () {
                      Navigator.pushNamed(context, RoutesManager.sendExamTeacher);
                    },
                  ),
                  SizedBox(
                    height: AppDimensions.getDimensions(requiredHeight: 22),
                  ),
                  MainButtonGrey(
                    buttonName: AppStrings.kArrangeQsExams,
                    onPressed: () {
                      Navigator.pushNamed(context, RoutesManager.arrangeQuestionsTeacher);
                    },
                  ),
                  SizedBox(
                    height: AppDimensions.getDimensions(requiredHeight: 16),
                  ),
                  const BottomSheetForCreationQuestion(buttonName: AppStrings.kAddQExams),
                  SizedBox(
                    height: AppDimensions.getDimensions(requiredHeight: 30),
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
