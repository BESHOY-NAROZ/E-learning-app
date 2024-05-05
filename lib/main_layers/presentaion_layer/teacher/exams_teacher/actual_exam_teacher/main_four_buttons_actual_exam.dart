import 'package:assiut_project/core/app_constants/app_assets.dart';
import 'package:assiut_project/core/app_constants/app_colors.dart';
import 'package:assiut_project/core/app_constants/app_strings.dart';
import 'package:assiut_project/core/app_dimensions.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/custom_widgets/main_text_grey.dart';
import 'package:assiut_project/main_layers/presentaion_layer/teacher/create_exam_teacher/exam_editing_teacher/solving_idea_bottom_sheet.dart';
import 'package:assiut_project/main_layers/presentaion_layer/teacher/create_exam_teacher/exam_editing_teacher/solving_way_bottom_sheet.dart';
import 'package:assiut_project/main_layers/presentaion_layer/teacher/create_exam_teacher/exam_editing_teacher/video_bottom_sheet.dart';
import 'package:flutter/material.dart';

class MainFourButtonsActualExam extends StatelessWidget {
  const MainFourButtonsActualExam({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context: context, designHeight: 778, designWidth: 360);

    return Column(
      children: [
        Row(
          children: [
            const VideoBottomSheet(),
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
                  Image.asset(
                    AppAssets.kShowExam,
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
          height: AppDimensions.getDimensions(requiredHeight: 18),
        ),
        Row(
          children: [
            const SolvingWayBottomSheet(),
            SizedBox(
              width: AppDimensions.getDimensions(requiredWidth: 9),
            ),
            const SolvingIdeaBottomSheet(),
          ],
        ),
      ],
    );
  }
}
