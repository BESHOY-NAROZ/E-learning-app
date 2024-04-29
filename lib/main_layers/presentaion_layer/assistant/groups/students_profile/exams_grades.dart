import 'package:assiut_project/core/app_constants/app_assets.dart';
import 'package:assiut_project/core/app_constants/app_strings.dart';
import 'package:assiut_project/core/app_dimensions.dart';
import 'package:assiut_project/main_layers/presentaion_layer/assistant/groups/shared_components_groups/main_result_container.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_text_black.dart';
import 'package:flutter/material.dart';

class ExamsGrades extends StatelessWidget {
  const ExamsGrades({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context: context, designHeight: 1108, designWidth: 360);

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            MainTextBlack(
              myText: AppStrings.kExamGradesGroups,
              fontSize: AppDimensions.defaultSize * 16,
            ),
            SizedBox(
              width: AppDimensions.getDimensions(requiredWidth: 4.42),
            ),
            SizedBox(
              width: AppDimensions.getDimensions(requiredWidth: 23.3),
              height: AppDimensions.getDimensions(requiredHeight: 23.3),
              child: Image.asset(AppAssets.kExamVector),
            ),
          ],
        ),
        SizedBox(
          height: AppDimensions.getDimensions(requiredHeight: 15),
        ),
        SizedBox(
          height: AppDimensions.getDimensions(requiredHeight: 180),
          child: ListView.separated(
              padding: EdgeInsets.zero,
              itemBuilder: (context, index) {
                return const MainResultContainer(
                  topLeftText: AppStrings.kResultGroups,
                  bottomLeftText: AppStrings.kActualResultGroups,
                  topRightText: AppStrings.kTransitionalElementsGroups,
                  bottomRightText: AppStrings.kHintTextStatisticsGroups,
                );
              },
              separatorBuilder: (context, index) {
                return SizedBox(
                  height: AppDimensions.getDimensions(requiredHeight: 8),
                );
              },
              itemCount: 2),
        ),
      ],
    );
  }
}
