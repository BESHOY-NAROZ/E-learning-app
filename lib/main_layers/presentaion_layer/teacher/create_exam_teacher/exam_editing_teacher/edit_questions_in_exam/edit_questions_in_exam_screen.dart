import 'package:assiut_project/core/app_constants/app_assets.dart';
import 'package:assiut_project/core/app_constants/app_colors.dart';
import 'package:assiut_project/core/app_constants/app_strings.dart';
import 'package:assiut_project/core/app_dimensions.dart';
import 'package:assiut_project/core/app_toast.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/expanded_text_form_filed.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_app_bar.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_button_red.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_text_black.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_text_grey.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_text_white.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/text_form_filed.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

import 'edit_questions_bottom_sheet.dart';

class EditQuestionsTeacher extends StatelessWidget {
  const EditQuestionsTeacher({Key? key}) : super(key: key);

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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        MainTextBlack(
                          myText: AppStrings.kFirstTestCreateExam,
                          fontSize: AppDimensions.defaultSize * 16,
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
                      child: MainTextGrey(
                        myText: AppStrings.kSpecificFirstTestCreateExam,
                        color: AppColors.kMainGery8D,
                        fontSize: AppDimensions.defaultSize * 10,
                      ),
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 21),
                    ),
                    MainTextBlack(
                      myText: AppStrings.kFirstQCreateCustomExam,
                      fontSize: AppDimensions.defaultSize * 16,
                      fontWeight: FontWeight.w400,
                    ),
                    Row(
                      children: [
                        MainTextBlack(
                          myText: AppStrings.kQNumberCreateCustomExam,
                          textDirection: TextDirection.rtl,
                          fontSize: AppDimensions.defaultSize * 12,
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
                              value: 0.1,
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 22),
                    ),
                    Row(
                      children: [
                        MainTextGrey(
                          myText: AppStrings.kOptionalCreateCustomExam,
                          fontSize: AppDimensions.defaultSize * 12,
                        ),
                        Spacer(),
                        MainTextGrey(
                          myText: AppStrings.kWritePartCreateCustomExam,
                          fontSize: AppDimensions.defaultSize * 12,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 8),
                    ),
                    CustomTextFormFiled(
                      hintText: AppStrings.kFirstTestCreateCustomExam,
                      textDirection: TextDirection.rtl,
                      hintStyle: TextStyle(
                        fontSize: AppDimensions.defaultSize * 12,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Almarai',
                        color: AppColors.kDetailsProfileEditing,
                      ),
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 14),
                    ),
                    MainTextGrey(
                      myText: AppStrings.kWriteQCreateCustomExam,
                      fontSize: AppDimensions.defaultSize * 12,
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 8),
                    ),
                    CustomTextFormFiled(
                      hintText: AppStrings.kFirstTestCreateCustomExam,
                      textDirection: TextDirection.rtl,
                      hintStyle: TextStyle(
                        fontSize: AppDimensions.defaultSize * 12,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Almarai',
                        color: AppColors.kDetailsProfileEditing,
                      ),
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 14),
                    ),
                    const Align(
                        alignment: Alignment.topLeft, child: EditQuestionsBottomSheetTeacher()),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 25),
                    ),
                    MainTextGrey(
                      myText: AppStrings.kCorrectAnswerCreateCustomExam,
                      fontSize: AppDimensions.defaultSize * 12,
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 8),
                    ),
                    CustomTextFormFiled(
                      hintText: AppStrings.kActualCorrectAnswerCreateCustomExam,
                      textDirection: TextDirection.rtl,
                      prefixIcon: Icon(Icons.arrow_left_rounded),
                      enabled: false,
                      hintStyle: TextStyle(
                        fontSize: AppDimensions.defaultSize * 12,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Almarai',
                        color: AppColors.kDetailsProfileEditing,
                      ),
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 14),
                    ),
                    MainTextGrey(
                      myText: AppStrings.kSolvingIdeaCreateCustomExam,
                      fontSize: AppDimensions.defaultSize * 12,
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 8),
                    ),
                    ExpandedCustomTextFormFiled(
                      height: 111,
                      hintText: AppStrings.kFirstTestCreateCustomExam,
                      textDirection: TextDirection.rtl,
                      hintStyle: TextStyle(
                        fontSize: AppDimensions.defaultSize * 12,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Almarai',
                        color: AppColors.kDetailsProfileEditing,
                      ),
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 18),
                    ),
                    MainTextGrey(
                      myText: AppStrings.kSolvingWayCreateCustomExam,
                      fontSize: AppDimensions.defaultSize * 12,
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 8),
                    ),
                    ExpandedCustomTextFormFiled(
                      height: 111,
                      hintText: AppStrings.kFirstTestCreateCustomExam,
                      textDirection: TextDirection.rtl,
                      hintStyle: TextStyle(
                        fontSize: AppDimensions.defaultSize * 12,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Almarai',
                        color: AppColors.kDetailsProfileEditing,
                      ),
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 14),
                    ),
                    MainTextGrey(
                      myText: AppStrings.kQDegreeCreateCustomExam,
                      fontSize: AppDimensions.defaultSize * 12,
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 8),
                    ),
                    CustomTextFormFiled(
                      hintText: AppStrings.kActualDegreeCreateExam,
                      textDirection: TextDirection.rtl,
                      hintStyle: TextStyle(
                        fontSize: AppDimensions.defaultSize * 12,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Almarai',
                        color: AppColors.kDetailsProfileEditing,
                      ),
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 40),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        DottedBorder(
                          radius: const Radius.circular(12),
                          color: AppColors.kMainGeryD9,
                          dashPattern: const [10, 6],
                          strokeWidth: 2,
                          strokeCap: StrokeCap.butt,
                          child: SizedBox(
                            height: AppDimensions.getDimensions(requiredHeight: 126),
                            width: AppDimensions.getDimensions(requiredWidth: 143),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  AppAssets.kVideo2,
                                  height: AppDimensions.getDimensions(requiredHeight: 45),
                                  width: AppDimensions.getDimensions(requiredWidth: 45),
                                ),
                                SizedBox(
                                  height: AppDimensions.getDimensions(requiredHeight: 10),
                                ),
                                MainTextGrey(
                                  myText: AppStrings.kDownLoadVideoCreateCustomExam,
                                  color: AppColors.kMainGery7A,
                                  fontSize: AppDimensions.defaultSize * 12,
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: AppDimensions.getDimensions(requiredWidth: 18),
                        ),
                        DottedBorder(
                          radius: const Radius.circular(12),
                          color: AppColors.kMainGeryD9,
                          dashPattern: const [10, 6],
                          strokeWidth: 2,
                          strokeCap: StrokeCap.butt,
                          child: SizedBox(
                            height: AppDimensions.getDimensions(requiredHeight: 126),
                            width: AppDimensions.getDimensions(requiredWidth: 143),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                RotationTransition(
                                  turns: const AlwaysStoppedAnimation(10 / 360),
                                  child: Image.asset(
                                    AppAssets.kImage,
                                    height: AppDimensions.getDimensions(requiredHeight: 45),
                                    width: AppDimensions.getDimensions(requiredWidth: 45),
                                  ),
                                ),
                                SizedBox(
                                  height: AppDimensions.getDimensions(requiredHeight: 10),
                                ),
                                MainTextGrey(
                                  myText: AppStrings.kDownLoadPicCreateCustomExam,
                                  color: AppColors.kMainGery7A,
                                  fontSize: AppDimensions.defaultSize * 12,
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 33),
                    ),
                    MainButtonRed(
                      buttonName: AppStrings.kSaveButtonExamEditing,
                      onPressed: () {
                        MyToast.showMyToast(
                            context: context,
                            myMessage: AppStrings.kSavedExamEditing,
                            myIcon: Icons.close_rounded);
                      },
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 33),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            height: AppDimensions.getDimensions(requiredHeight: 118),
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
              ],
            ),
          )
        ],
      ),
    );
  }
}
