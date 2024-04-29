import 'package:assiut_project/core/app_constants/app_assets.dart';
import 'package:assiut_project/core/app_constants/app_colors.dart';
import 'package:assiut_project/core/app_constants/app_lists.dart';
import 'package:assiut_project/core/app_constants/app_strings.dart';
import 'package:assiut_project/core/app_dimensions.dart';
import 'package:assiut_project/core/app_routes.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/expanded_text_form_filed.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_app_bar.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_button_red.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_text_black.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_text_grey.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/text_form_filed.dart';
import 'package:assiut_project/main_layers/presentaion_layer/teacher/add_question_teacher/question_type_teacher/question_type_bottom_sheet.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

import 'add_specific_type_bottom_sheet.dart';

class AddSpecificQuestionTypeTeacher extends StatelessWidget {
  const AddSpecificQuestionTypeTeacher({Key? key}) : super(key: key);

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
                      height: AppDimensions.getDimensions(requiredHeight: 20),
                    ),
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
                      myText: QuestionTypeBottomSheet.currentRadio ==
                              AppLists.kAddQuestionTypeList[0]
                          ? AppLists.kMainAddQuestionTypeList[0]
                          : QuestionTypeBottomSheet.currentRadio == AppLists.kAddQuestionTypeList[1]
                              ? AppLists.kMainAddQuestionTypeList[1]
                              : QuestionTypeBottomSheet.currentRadio ==
                                      AppLists.kAddQuestionTypeList[2]
                                  ? AppLists.kMainAddQuestionTypeList[2]
                                  : AppLists.kMainAddQuestionTypeList[3],
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
                    if (QuestionTypeBottomSheet.currentRadio == AppLists.kAddQuestionTypeList[0])
                      Column(
                        children: [
                          const Align(
                              alignment: Alignment.topLeft,
                              child: AddSpecificTypeBottomSheetTeacher()),
                          SizedBox(
                            height: AppDimensions.getDimensions(requiredHeight: 25),
                          ),
                        ],
                      ),
                    if (QuestionTypeBottomSheet.currentRadio == AppLists.kAddQuestionTypeList[3])
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          MainTextGrey(
                            myText: AppStrings.kCorrectAnswerCreateExam,
                            fontSize: AppDimensions.defaultSize * 12,
                          ),
                          SizedBox(
                            height: AppDimensions.getDimensions(requiredHeight: 8),
                          ),
                          CustomTextFormFiled(
                            hintText: AppStrings.kCorrectAnswerCreateExam,
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
                            height: AppDimensions.getDimensions(requiredHeight: 25),
                          ),
                        ],
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
                      buttonName: AppStrings.kAddingQAddQuestion,
                      onPressed: () {
                        Navigator.pushNamed(context, RoutesManager.theQuestionTeacher);
                      },
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 33),
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
