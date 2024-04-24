import 'package:assiut_project/core/app_constants/app_assets.dart';
import 'package:assiut_project/core/app_constants/app_colors.dart';
import 'package:assiut_project/core/app_constants/app_strings.dart';
import 'package:assiut_project/core/app_dimensions.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_app_bar.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_button_grey.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_text_black.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_text_grey.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_text_white.dart';
import 'package:assiut_project/main_layers/presentaion_layer/teacher/exams_teacher/actual_exam_teacher/main_four_buttons_actual_exam.dart';
import 'package:flutter/material.dart';

import 'select_answer_radio.dart';

class ActualExamTeacher extends StatelessWidget {
  const ActualExamTeacher({Key? key}) : super(key: key);

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
                  const MainTextBlack(
                    myText: AppStrings.kMandatoryQExams,
                    fontSize: 16,
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
                      Container(
                        height: AppDimensions.getDimensions(requiredHeight: 45),
                        width: AppDimensions.getDimensions(requiredWidth: 156),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8), color: AppColors.kMainGeryFA),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const MainTextGrey(
                              myText: AppStrings.kDeleteQExams,
                            ),
                            SizedBox(
                              width: AppDimensions.getDimensions(requiredWidth: 5),
                            ),
                            Image.asset(
                              AppAssets.kRemoveGroupsScreen,
                              color: AppColors.kMainTextBlack,
                              height: AppDimensions.getDimensions(requiredHeight: 20),
                              width: AppDimensions.getDimensions(requiredWidth: 20),
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
                    ],
                  ),
                  SizedBox(
                    height: AppDimensions.getDimensions(requiredHeight: 103),
                  ),
                  const MainFourButtonsActualExam(),
                  SizedBox(
                    height: AppDimensions.getDimensions(requiredHeight: 40),
                  ),
                  RotatedBox(
                    quarterTurns: 90,
                    child: LinearProgressIndicator(
                      color: AppColors.kMainBlueC4,
                      backgroundColor: AppColors.kMainGeryFA,
                      value: 0.4,
                      borderRadius: BorderRadius.circular(10),
                    ),
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
                              myText: AppStrings.kShowAnswerExams,
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
                    height: AppDimensions.getDimensions(requiredHeight: 30),
                  ),
                  MainButtonGrey(
                    buttonName: AppStrings.kArrangeQsExams,
                    onPressed: () {},
                  ),
                  SizedBox(
                    height: AppDimensions.getDimensions(requiredHeight: 16),
                  ),
                  MainButtonGrey(
                    buttonName: AppStrings.kAddQExams,
                    onPressed: () {},
                  ),
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
