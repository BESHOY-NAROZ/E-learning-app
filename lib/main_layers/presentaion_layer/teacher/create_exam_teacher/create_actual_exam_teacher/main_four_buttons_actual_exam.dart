import 'package:assiut_project/core/app_constants/app_assets.dart';
import 'package:assiut_project/core/app_constants/app_colors.dart';
import 'package:assiut_project/core/app_constants/app_strings.dart';
import 'package:assiut_project/core/app_dimensions.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_text_grey.dart';
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
            Container(
              height: AppDimensions.getDimensions(requiredHeight: 45),
              width: AppDimensions.getDimensions(requiredWidth: 156),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8), color: AppColors.kMainGeryFA),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const MainTextGrey(
                    myText: AppStrings.kAnswerVideoExams,
                  ),
                  SizedBox(
                    width: AppDimensions.getDimensions(requiredWidth: 5),
                  ),
                  Image.asset(
                    AppAssets.kVideo,
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
            Container(
              height: AppDimensions.getDimensions(requiredHeight: 45),
              width: AppDimensions.getDimensions(requiredWidth: 156),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8), color: AppColors.kMainGeryFA),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const MainTextGrey(
                    myText: AppStrings.kSolutionWayExams,
                  ),
                  SizedBox(
                    width: AppDimensions.getDimensions(requiredWidth: 5),
                  ),
                  Image.asset(
                    AppAssets.kEditFile,
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
                    myText: AppStrings.kSolutionIdeaExams,
                  ),
                  SizedBox(
                    width: AppDimensions.getDimensions(requiredWidth: 5),
                  ),
                  Image.asset(
                    AppAssets.kLight,
                    color: AppColors.kMainTextBlack,
                    height: AppDimensions.getDimensions(requiredHeight: 20),
                    width: AppDimensions.getDimensions(requiredWidth: 20),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
