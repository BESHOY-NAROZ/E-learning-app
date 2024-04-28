import 'package:assiut_project/core/app_constants/app_assets.dart';
import 'package:assiut_project/core/app_constants/app_colors.dart';
import 'package:assiut_project/core/app_constants/app_strings.dart';
import 'package:assiut_project/core/app_dimensions.dart';
import 'package:assiut_project/core/app_routes.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/expanded_text_form_filed.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_app_bar.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_button_red.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_text_black.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_text_grey.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/text_form_filed.dart';
import 'package:assiut_project/main_layers/presentaion_layer/teacher/create_exam_teacher/create_custom_exam_teacher/exam_with_specific_type/create_custom_exam_bottom_sheet.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class CustomExamWithSpecificTypeTeacher extends StatelessWidget {
  const CustomExamWithSpecificTypeTeacher({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context: context, designHeight: 778, designWidth: 360);
    return Scaffold(
      body: Column(
        children: [
          const MainAppBar(
            designHeight: 1006,
            designWidth: 360,
            myTitle: AppStrings.kCreateExamCreateCustomExam,
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
                      height: AppDimensions.getDimensions(requiredHeight: 21),
                    ),
                    const MainTextBlack(
                      myText: AppStrings.kFirstQCreateCustomExam,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                    Row(
                      children: [
                        const MainTextBlack(
                          myText: AppStrings.kQNumberCreateCustomExam,
                          textDirection: TextDirection.rtl,
                          fontSize: 12,
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
                    const Row(
                      children: [
                        MainTextGrey(
                          myText: AppStrings.kOptionalCreateCustomExam,
                          fontSize: 12,
                        ),
                        Spacer(),
                        MainTextGrey(
                          myText: AppStrings.kWritePartCreateCustomExam,
                          fontSize: 12,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 8),
                    ),
                    const CustomTextFormFiled(
                      hintText: AppStrings.kFirstTestCreateCustomExam,
                      textDirection: TextDirection.rtl,
                      hintStyle: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Almarai',
                        color: AppColors.kDetailsProfileEditing,
                      ),
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 14),
                    ),
                    const MainTextGrey(
                      myText: AppStrings.kWriteQCreateCustomExam,
                      fontSize: 12,
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 8),
                    ),
                    const CustomTextFormFiled(
                      hintText: AppStrings.kFirstTestCreateCustomExam,
                      textDirection: TextDirection.rtl,
                      hintStyle: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Almarai',
                        color: AppColors.kDetailsProfileEditing,
                      ),
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 14),
                    ),
                    const Align(
                        alignment: Alignment.topLeft, child: CreateCustomExamBottomSheetTeacher()),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 25),
                    ),
                    const MainTextGrey(
                      myText: AppStrings.kCorrectAnswerCreateCustomExam,
                      fontSize: 12,
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 8),
                    ),
                    const CustomTextFormFiled(
                      hintText: AppStrings.kActualCorrectAnswerCreateCustomExam,
                      textDirection: TextDirection.rtl,
                      prefixIcon: Icon(Icons.arrow_left_rounded),
                      enabled: false,
                      hintStyle: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Almarai',
                        color: AppColors.kDetailsProfileEditing,
                      ),
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 14),
                    ),
                    const MainTextGrey(
                      myText: AppStrings.kSolvingIdeaCreateCustomExam,
                      fontSize: 12,
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 8),
                    ),
                    const ExpandedCustomTextFormFiled(
                      height: 111,
                      hintText: AppStrings.kFirstTestCreateCustomExam,
                      textDirection: TextDirection.rtl,
                      hintStyle: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Almarai',
                        color: AppColors.kDetailsProfileEditing,
                      ),
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 18),
                    ),
                    const MainTextGrey(
                      myText: AppStrings.kSolvingWayCreateCustomExam,
                      fontSize: 12,
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 8),
                    ),
                    const ExpandedCustomTextFormFiled(
                      height: 111,
                      hintText: AppStrings.kFirstTestCreateCustomExam,
                      textDirection: TextDirection.rtl,
                      hintStyle: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Almarai',
                        color: AppColors.kDetailsProfileEditing,
                      ),
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 14),
                    ),
                    const MainTextGrey(
                      myText: AppStrings.kQDegreeCreateCustomExam,
                      fontSize: 12,
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 8),
                    ),
                    const CustomTextFormFiled(
                      hintText: AppStrings.kActualDegreeCreateExam,
                      textDirection: TextDirection.rtl,
                      hintStyle: TextStyle(
                        fontSize: 12,
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
                                const MainTextGrey(
                                  myText: AppStrings.kDownLoadVideoCreateCustomExam,
                                  color: AppColors.kMainGery7A,
                                  fontSize: 12,
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
                                const MainTextGrey(
                                  myText: AppStrings.kDownLoadPicCreateCustomExam,
                                  color: AppColors.kMainGery7A,
                                  fontSize: 12,
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
                      buttonName: AppStrings.kCreateExamCustomExam,
                      onPressed: () {
                        Navigator.pushNamed(context, RoutesManager.createExamDoneTeacher);
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
