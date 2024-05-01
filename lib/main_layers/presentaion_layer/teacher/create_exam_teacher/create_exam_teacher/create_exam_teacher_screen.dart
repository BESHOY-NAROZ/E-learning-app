import 'package:assiut_project/core/app_constants/app_colors.dart';
import 'package:assiut_project/core/app_constants/app_strings.dart';
import 'package:assiut_project/core/app_dimensions.dart';
import 'package:assiut_project/core/app_routes.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/custom_widgets/main_app_bar.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/custom_widgets/main_button_red.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/custom_widgets/main_text_grey.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/custom_widgets/text_form_filed.dart';
import 'package:assiut_project/main_layers/presentaion_layer/teacher/create_exam_teacher/create_exam_teacher/exam_class_room_bottom_sheet.dart';
import 'package:assiut_project/main_layers/presentaion_layer/teacher/create_exam_teacher/create_exam_teacher/exam_languages_bottom_sheet.dart';
import 'package:assiut_project/main_layers/presentaion_layer/teacher/create_exam_teacher/create_exam_teacher/exam_level_bottom_sheet.dart';
import 'package:flutter/material.dart';

import 'my_duration_time.dart';

class CreateExamTeacher extends StatelessWidget {
  const CreateExamTeacher({Key? key}) : super(key: key);

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
                      height: AppDimensions.getDimensions(requiredHeight: 32),
                    ),
                    const MainTextGrey(
                      myText: AppStrings.kTestNameCreateExam,
                      fontSize: 12,
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 8),
                    ),
                    const CustomTextFormFiled(
                      hintText: AppStrings.kActualTestNameCreateExam,
                      textDirection: TextDirection.rtl,
                      hintStyle: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Almarai',
                        color: AppColors.kDetailsProfileEditing,
                      ),
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 16),
                    ),
                    const MainTextGrey(
                      myText: AppStrings.kStartDateCreateExam,
                      fontSize: 12,
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 8),
                    ),
                    const CustomTextFormFiled(
                      hintText: AppStrings.kActualStartDateCreateExam,
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
                      height: AppDimensions.getDimensions(requiredHeight: 16),
                    ),
                    const MainTextGrey(
                      myText: AppStrings.kEndDateCreateExam,
                      fontSize: 12,
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 8),
                    ),
                    const CustomTextFormFiled(
                      hintText: AppStrings.kActualEndDateCreateExam,
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
                    ///////
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 16),
                    ),
                    const MainTextGrey(
                      myText: AppStrings.kDurationCreateExam,
                      fontSize: 12,
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 8),
                    ),
                    const MyDurationTime(),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 16),
                    ),
                    const MainTextGrey(
                      myText: AppStrings.kLevelCreateExam,
                      fontSize: 12,
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 8),
                    ),
                    const ExamLevelBottomSheet(),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 16),
                    ),
                    const MainTextGrey(
                      myText: AppStrings.kClassCreateExam,
                      fontSize: 12,
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 8),
                    ),
                    const ExamClassRoomBottomSheet(),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 16),
                    ),
                    const MainTextGrey(
                      myText: AppStrings.kSubjectCreateExam,
                      fontSize: 12,
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 8),
                    ),
                    const ExamLanguagesBottomSheet(),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 22),
                    ),
                    MainButtonRed(
                      buttonName: AppStrings.kResumptionCreateExam,
                      onPressed: () {
                        Navigator.pushNamed(
                            context, RoutesManager.createExamSpecificSubjectTeacher);
                      },
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 30),
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
