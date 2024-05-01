import 'package:assiut_project/core/app_constants/app_colors.dart';
import 'package:assiut_project/core/app_constants/app_strings.dart';
import 'package:assiut_project/core/app_dimensions.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/custom_widgets/main_text_black.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/custom_widgets/main_text_grey.dart';
import 'package:flutter/material.dart';

class TestStatisticsListTeacher extends StatelessWidget {
  const TestStatisticsListTeacher({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context: context, designHeight: 778, designWidth: 360);

    return Container(
      height: AppDimensions.getDimensions(requiredHeight: 241),
      width: AppDimensions.getDimensions(requiredWidth: 320),
      padding: EdgeInsets.zero,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8), color: AppColors.kContainerMainScreenMenu),
      child: Padding(
        padding: EdgeInsets.only(right: AppDimensions.getDimensions(requiredWidth: 13)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            MainTextBlack(
              myText: AppStrings.kFirstTestGroups,
              fontSize: AppDimensions.defaultSize * 16,
              fontWeight: FontWeight.w700,
            ),
            SizedBox(
              height: AppDimensions.getDimensions(requiredHeight: 4),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                MainTextBlack(
                  myText: AppStrings.kTwelveStudentsGroups,
                  textDirection: TextDirection.rtl,
                  fontSize: AppDimensions.defaultSize * 12,
                  fontWeight: FontWeight.w400,
                ),
                MainTextGrey(
                  myText: AppStrings.kFromAllGroups,
                  fontSize: AppDimensions.defaultSize * 12,
                  fontWeight: FontWeight.w300,
                ),
                Text(' '),
                MainTextBlack(
                  myText: AppStrings.kSixStudentsGroups,
                  textDirection: TextDirection.rtl,
                  fontSize: AppDimensions.defaultSize * 12,
                  fontWeight: FontWeight.w400,
                ),
                MainTextGrey(
                  myText: AppStrings.kTestSolvedGroups,
                  fontSize: AppDimensions.defaultSize * 12,
                  fontWeight: FontWeight.w300,
                ),
              ],
            ),
            SizedBox(
              height: AppDimensions.getDimensions(requiredHeight: 5),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  AppStrings.kSolvePercentageNumberGroups,
                  textDirection: TextDirection.rtl,
                  style: TextStyle(
                      fontFamily: 'Almarai',
                      color: AppColors.kSolvePercentageGroups,
                      fontWeight: FontWeight.w700,
                      fontSize: AppDimensions.defaultSize * 16),
                ),
                Text(
                  AppStrings.kSolvePercentageGroups,
                  textDirection: TextDirection.rtl,
                  style: TextStyle(
                      fontFamily: 'Almarai',
                      color: AppColors.kSolvePercentageGroups,
                      fontWeight: FontWeight.w700,
                      fontSize: AppDimensions.defaultSize * 16),
                ),
              ],
            ),
            SizedBox(
              height: AppDimensions.getDimensions(requiredHeight: 14),
            ),

            //////////////////////////

            MainTextBlack(
              myText: AppStrings.kSucceededPercentageGroups,
              fontSize: AppDimensions.defaultSize * 16,
              fontWeight: FontWeight.w700,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                MainTextGrey(
                  myText: AppStrings.kSucceededNumberGroups,
                  fontSize: AppDimensions.defaultSize * 12,
                  fontWeight: FontWeight.w300,
                  textDirection: TextDirection.rtl,
                ),
                SizedBox(
                  width: AppDimensions.getDimensions(requiredWidth: 20),
                ),
                Text(
                  AppStrings.kSolvePercentageNumberGroups,
                  style: TextStyle(
                      fontFamily: 'Almarai',
                      color: AppColors.kSucceededPercentageNumberGroups,
                      fontWeight: FontWeight.w700,
                      fontSize: AppDimensions.defaultSize * 20),
                ),
              ],
            ),
            SizedBox(
              height: AppDimensions.getDimensions(requiredHeight: 5),
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: List.generate(30, (index) {
                  return Container(
                    margin: EdgeInsets.symmetric(
                        horizontal: AppDimensions.getDimensions(requiredWidth: 1)),
                    height: AppDimensions.getDimensions(requiredHeight: 1),
                    width: AppDimensions.getDimensions(requiredWidth: 3),
                    color: AppColors.kMainTextBlack,
                  );
                })),
            SizedBox(
              height: AppDimensions.getDimensions(requiredHeight: 5),
            ),
            MainTextBlack(
              myText: AppStrings.kFailedPercentageGroups,
              fontSize: AppDimensions.defaultSize * 16,
              fontWeight: FontWeight.w700,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                MainTextGrey(
                  myText: AppStrings.kFailedNumberGroups,
                  fontSize: AppDimensions.defaultSize * 12,
                  fontWeight: FontWeight.w300,
                  textDirection: TextDirection.rtl,
                ),
                SizedBox(
                  width: AppDimensions.getDimensions(requiredWidth: 20),
                ),
                Text(
                  AppStrings.kSolvePercentageNumberGroups,
                  style: TextStyle(
                      fontFamily: 'Almarai',
                      color: AppColors.kFailedPercentageNumberGroups,
                      fontWeight: FontWeight.w700,
                      fontSize: AppDimensions.defaultSize * 20),
                ),
              ],
            )

            /////////////////////////
          ],
        ),
      ),
    );
  }
}
