import 'package:assiut_project/core/app_constants/app_colors.dart';
import 'package:assiut_project/core/app_constants/app_strings.dart';
import 'package:assiut_project/core/app_dimensions.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_text_black.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_text_grey.dart';
import 'package:flutter/material.dart';

class TestStatisticsList extends StatelessWidget {
  const TestStatisticsList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context: context, designHeight: 778, designWidth: 360);

    return Container(
      height: AppDimensions.getDimensions(requiredHeight: 170),
      width: AppDimensions.getDimensions(requiredWidth: 320),
      padding: EdgeInsets.zero,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: AppColors.kContainerMainScreenMenu),
      child: Padding(
        padding:  EdgeInsets.only(right: AppDimensions.getDimensions
          (requiredWidth: 13)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [

            const MainTextBlack(
              myText: AppStrings.kFirstTestGroups,
              fontSize: 16,
              fontWeight: FontWeight.w700,
            ),
            SizedBox(
              height: AppDimensions.getDimensions(requiredHeight: 4),
            ),
            const Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                MainTextBlack(
                  myText: AppStrings.kTwelveStudentsGroups,
                  textDirection: TextDirection.rtl,
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
                MainTextGrey(
                  myText: AppStrings.kFromAllGroups,
                  fontSize: 12,
                  fontWeight: FontWeight.w300,
                ),
                Text(' '),
                MainTextBlack(
                  myText: AppStrings.kSixStudentsGroups,
                  textDirection: TextDirection.rtl,
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
                MainTextGrey(
                  myText: AppStrings.kTestSolvedGroups,
                  fontSize: 12,
                  fontWeight: FontWeight.w300,
                ),
              ],
            ),
            SizedBox(
              height: AppDimensions.getDimensions(requiredHeight: 5),
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.end,            children: [
              Text(
                AppStrings.kSolvePercentageNumberGroups,
                textDirection: TextDirection.rtl,
                style: TextStyle(
                    fontFamily: 'Almarai',
                    color: AppColors.kSolvePercentageGroups,
                    fontWeight: FontWeight.w700,
                    fontSize: 16),
              ),
              Text(
                AppStrings.kSolvePercentageGroups,
                textDirection: TextDirection.rtl,
                style: TextStyle(
                    fontFamily: 'Almarai',
                    color: AppColors.kSolvePercentageGroups,
                    fontWeight: FontWeight.w700,
                    fontSize: 16),
              ),
            ],
            ),
            SizedBox(
              height: AppDimensions.getDimensions(requiredHeight: 14),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  width: AppDimensions.getDimensions(requiredWidth: 144),
                  height: AppDimensions.getDimensions(requiredHeight: 70),
                  padding: EdgeInsets.zero,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: AppColors.kPercentageFirstContainerGroups),
                  child: Padding(
                    padding:  EdgeInsets.only(right: AppDimensions
                        .getDimensions(requiredWidth: 7)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        SizedBox(
                          height: AppDimensions.getDimensions(requiredHeight: 5),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            const Text(
                              AppStrings.kSolvePercentageNumberGroups,
                              style: TextStyle(
                                  fontFamily: 'Almarai',
                                  color: AppColors.kFailedPercentageNumberGroups,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 20),
                            ),
                            SizedBox(
                              width: AppDimensions.getDimensions(requiredWidth: 4),
                            ),
                            const MainTextBlack(
                              myText: AppStrings.kFailedPercentageGroups,
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: AppDimensions.getDimensions(requiredHeight: 3),
                        ),
                        const MainTextGrey(
                          myText: AppStrings.kSucceededNumberGroups,
                          fontSize: 12,
                          fontWeight: FontWeight.w300,
                          textDirection: TextDirection.rtl,
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: AppDimensions.getDimensions(requiredWidth: 8),
                ),
                Container(
                  width: AppDimensions.getDimensions(requiredWidth: 144),
                  height: AppDimensions.getDimensions(requiredHeight: 70),
                  padding: EdgeInsets.zero,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: AppColors.kPercentageSecondContainerGroups),
                  child: Padding(
                    padding:  EdgeInsets.only(right: AppDimensions
                        .getDimensions(requiredWidth: 7)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        SizedBox(
                          height: AppDimensions.getDimensions(requiredHeight: 5),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            const Text(
                              AppStrings.kSolvePercentageNumberGroups,
                              style: TextStyle(
                                  fontFamily: 'Almarai',
                                  color: AppColors.kSucceededPercentageNumberGroups,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 20),
                            ),
                            SizedBox(
                              width: AppDimensions.getDimensions(requiredWidth: 4),
                            ),
                            const MainTextBlack(
                              myText: AppStrings.kSucceededPercentageGroups,
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: AppDimensions.getDimensions(requiredHeight: 3),
                        ),
                        const MainTextGrey(
                          myText: AppStrings.kSucceededNumberGroups,
                          fontSize: 12,
                          fontWeight: FontWeight.w300,
                          textDirection: TextDirection.rtl,

                        )
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
