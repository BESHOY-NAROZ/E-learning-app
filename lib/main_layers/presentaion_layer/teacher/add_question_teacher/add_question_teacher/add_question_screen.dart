import 'package:assiut_project/core/app_constants/app_colors.dart';
import 'package:assiut_project/core/app_constants/app_strings.dart';
import 'package:assiut_project/core/app_dimensions.dart';
import 'package:assiut_project/core/app_routes.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/custom_widgets/main_app_bar.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/custom_widgets/main_button_grey.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/custom_widgets/main_text_grey.dart';
import 'package:assiut_project/main_layers/presentaion_layer/teacher/add_question_teacher/add_question_teacher/contents_level_bottom_sheet.dart';
import 'package:flutter/material.dart';

import 'contents_class_room_bottom_sheet.dart';
import 'contents_languages_bottom_sheet.dart';

class AddQuestionTeacher extends StatelessWidget {
  const AddQuestionTeacher({Key? key}) : super(key: key);

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
                child: Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
                  SizedBox(
                    height: AppDimensions.getDimensions(requiredHeight: 33),
                  ),
                  MainTextGrey(
                    myText: AppStrings.kLevelCreateExam,
                    color: AppColors.kMainGery7A,
                    fontSize: AppDimensions.defaultSize * 12,
                  ),
                  SizedBox(
                    height: AppDimensions.getDimensions(requiredHeight: 8),
                  ),
                  const ContentsLevelBottomSheet(),
                  SizedBox(
                    height: AppDimensions.getDimensions(requiredHeight: 14),
                  ),
                  MainTextGrey(
                    myText: AppStrings.kClassRoomAddQuestion,
                    color: AppColors.kMainGery7A,
                    fontSize: AppDimensions.defaultSize * 12,
                  ),
                  SizedBox(
                    height: AppDimensions.getDimensions(requiredHeight: 8),
                  ),
                  const ContentsClassRoomBottomSheet(),
                  SizedBox(
                    height: AppDimensions.getDimensions(requiredHeight: 14),
                  ),
                  MainTextGrey(
                    myText: AppStrings.kSubjectAddQuestion,
                    color: AppColors.kMainGery7A,
                    fontSize: AppDimensions.defaultSize * 12,
                  ),
                  SizedBox(
                    height: AppDimensions.getDimensions(requiredHeight: 8),
                  ),
                  const ContentsLanguagesBottomSheet(),
                  SizedBox(
                    height: AppDimensions.getDimensions(requiredHeight: 33),
                  ),
                  MainButtonGrey(
                    buttonName: AppStrings.kContentsAddQuestion,
                    onPressed: () {
                      Navigator.pushNamed(context, RoutesManager.addQuestionSpecificSubjectTeacher);
                    },
                  )
                ]),
              ),
            ),
          )
        ],
      ),
    );
  }
}
