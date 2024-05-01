import 'package:assiut_project/core/app_constants/app_assets.dart';
import 'package:assiut_project/core/app_constants/app_colors.dart';
import 'package:assiut_project/core/app_constants/app_strings.dart';
import 'package:assiut_project/core/app_dimensions.dart';
import 'package:assiut_project/core/app_routes.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/custom_widgets/main_app_bar.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/custom_widgets/main_button_red.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/custom_widgets/main_text_black.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/custom_widgets/main_text_blue.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/custom_widgets/main_text_grey.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/custom_widgets/main_text_white.dart';
import 'package:assiut_project/main_layers/presentaion_layer/teacher/create_exam_teacher/create_actual_exam_teacher/main_four_buttons_create_actual_exam.dart';
import 'package:assiut_project/main_layers/presentaion_layer/teacher/create_exam_teacher/create_actual_exam_teacher/select_answer_radio.dart';
import 'package:assiut_project/main_layers/presentaion_layer/teacher/create_exam_teacher/exam_editing_teacher/delete_question_bottom_sheet.dart';
import 'package:flutter/material.dart';

class ArrangeQuestionsTeacher extends StatelessWidget {
  const ArrangeQuestionsTeacher({Key? key}) : super(key: key);

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
                    MainTextGrey(
                      myText: AppStrings.kRemainingTimeExams,
                      fontSize: AppDimensions.defaultSize * 10,
                      fontWeight: FontWeight.w400,
                      color: AppColors.kMainGery8D,
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 3),
                    ),
                    MainTextGrey(
                      myText: AppStrings.kActualRemainingTimeExams,
                      fontSize: AppDimensions.defaultSize * 24,
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
                        MainTextBlack(
                          myText: AppStrings.kTestAddressExams,
                          fontSize: AppDimensions.defaultSize * 16,
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
                    MainTextGrey(
                      myText: AppStrings.kActualTestAddressExams,
                      fontSize: AppDimensions.defaultSize * 10,
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
                      MainTextBlue(
                        myText: AppStrings.kDegreeCreateExam,
                        color: AppColors.kMainBlueC4,
                        fontSize: AppDimensions.defaultSize * 11,
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
                    height: AppDimensions.getDimensions(requiredHeight: 20),
                  ),
                ]),
              ),
            ),
          ),
          Container(
            height: AppDimensions.getDimensions(requiredHeight: 180),
            width: AppDimensions.getDimensions(requiredWidth: 360),
            decoration: BoxDecoration(
              color: AppColors.kMainTextWhite,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withAlpha(20),
                  spreadRadius: 3,
                  blurRadius: 7,
                  offset: const Offset(0,
                      -7), // changes position of shadow, negative value on y makes it appering on the top
                ),
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MainTextBlack(
                      myText: AppStrings.kQNumberButtonExamEditing,
                      fontSize: AppDimensions.defaultSize * 12,
                    ),
                    SizedBox(
                      width: AppDimensions.getDimensions(requiredWidth: 3),
                    ),
                    Container(
                      height: AppDimensions.getDimensions(requiredHeight: 30),
                      width: AppDimensions.getDimensions(requiredWidth: 30),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(width: 2, color: AppColors.kMainGeryD9)),
                      child: Center(
                        child: MainTextBlack(
                          myText: AppStrings.kActualQNumberButtonExamEditing,
                          fontSize: AppDimensions.defaultSize * 12,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: AppDimensions.getDimensions(requiredWidth: 5),
                    ),
                    MainTextGrey(
                      myText: AppStrings.kTheQButtonExamEditing,
                      fontSize: AppDimensions.defaultSize * 10,
                      textDirection: TextDirection.rtl,
                    )
                  ],
                ),
                SizedBox(
                  height: AppDimensions.getDimensions(requiredHeight: 8),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
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
                          MainTextWhite(
                            myText: AppStrings.kNextQExams,
                            fontSize: AppDimensions.defaultSize * 16,
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
                  height: AppDimensions.getDimensions(requiredHeight: 18),
                ),
                MainButtonRed(
                  buttonName: AppStrings.kSaveArrangeExamEditing,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
