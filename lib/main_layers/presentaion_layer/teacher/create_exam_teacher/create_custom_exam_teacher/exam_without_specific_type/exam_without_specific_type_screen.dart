import 'package:assiut_project/core/app_constants/app_assets.dart';
import 'package:assiut_project/core/app_constants/app_colors.dart';
import 'package:assiut_project/core/app_constants/app_lists.dart';
import 'package:assiut_project/core/app_constants/app_strings.dart';
import 'package:assiut_project/core/app_dimensions.dart';
import 'package:assiut_project/core/app_routes.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/custom_widgets/expanded_text_form_filed.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/custom_widgets/main_app_bar.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/custom_widgets/main_button_red.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/custom_widgets/main_text_black.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/custom_widgets/main_text_grey.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/custom_widgets/text_form_filed.dart';
import 'package:assiut_project/main_layers/presentaion_layer/teacher/create_exam_teacher/create_custom_exam_teacher/exam_with_specific_type/create_custom_exam_bottom_sheet.dart';
import 'package:flutter/material.dart';

import 'dotted_container.dart';

class CustomExamWithOutSpecificTypeTeacher extends StatefulWidget {
  const CustomExamWithOutSpecificTypeTeacher({Key? key}) : super(key: key);

  @override
  State<CustomExamWithOutSpecificTypeTeacher> createState() =>
      _CustomExamWithOutSpecificTypeTeacherState();
}

class _CustomExamWithOutSpecificTypeTeacherState
    extends State<CustomExamWithOutSpecificTypeTeacher> {
  int myIndex = 0;
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
                      height: AppDimensions.getDimensions(requiredHeight: 19),
                    ),
                    Container(
                      height: AppDimensions.getDimensions(requiredHeight: 34),
                      width: AppDimensions.getDimensions(requiredWidth: 313),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8), color: AppColors.kMainGeryFA),
                      child: ListView.separated(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: AppLists.kExamWithoutTypeList.length,
                        physics: const BouncingScrollPhysics(),
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: () {
                              setState(() {
                                myIndex = index;
                              });
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                MainTextGrey(
                                  myText: AppLists.kExamWithoutTypeList[index],
                                  fontSize: AppDimensions.defaultSize * 12,
                                  color: myIndex == index ? AppColors.kMainBlueC4 : null,
                                ),
                                if (myIndex == index)
                                  Container(
                                    height: AppDimensions.getDimensions(requiredHeight: 3),
                                    width: AppDimensions.getDimensions(requiredWidth: 40),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: AppColors.kMainBlueC4),
                                    margin: EdgeInsets.only(
                                        top: AppDimensions.getDimensions(requiredHeight: 2)),
                                  ),
                              ],
                            ),
                          );
                        },
                        separatorBuilder: (context, index) {
                          return SizedBox(
                            width: AppDimensions.getDimensions(requiredWidth: 30),
                          );
                        },
                      ),
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 21),
                    ),
                    MainTextBlack(
                      myText: AppLists.kMainExamWithoutTypeList[myIndex],
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
                    if (myIndex == 0)
                      Column(
                        children: [
                          const Align(
                              alignment: Alignment.topLeft,
                              child: CreateCustomExamBottomSheetTeacher()),
                          SizedBox(
                            height: AppDimensions.getDimensions(requiredHeight: 25),
                          ),
                        ],
                      ),
                    if (myIndex == 2)
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
                    const DottedContainers(),
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
