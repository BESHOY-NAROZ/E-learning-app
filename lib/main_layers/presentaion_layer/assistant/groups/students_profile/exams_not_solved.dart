import 'package:assiut_project/core/app_constants/app_assets.dart';
import 'package:assiut_project/core/app_constants/app_colors.dart';
import 'package:assiut_project/core/app_constants/app_strings.dart';
import 'package:assiut_project/core/app_dimensions.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/custom_widgets/main_text_black.dart';
import 'package:flutter/material.dart';

class ExamsNotSolved extends StatelessWidget {
  const ExamsNotSolved({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context: context, designHeight: 778, designWidth: 360);

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            MainTextBlack(
              myText: AppStrings.kExamsNotSolvedGroups,
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
        ListView.separated(
            padding: EdgeInsets.zero,
            shrinkWrap: true,
            physics: const BouncingScrollPhysics(),
            itemBuilder: (context, index) {
              return Container(
                padding: EdgeInsets.zero,
                height: AppDimensions.getDimensions(requiredHeight: 57),
                width: AppDimensions.getDimensions(requiredWidth: 320),
                decoration: BoxDecoration(
                    color: AppColors.kSentExamsContainerGroups,
                    borderRadius: BorderRadius.circular(8)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding:
                          EdgeInsets.only(right: AppDimensions.getDimensions(requiredWidth: 9)),
                      child: MainTextBlack(
                        myText: AppStrings.kDigestiveGroups,
                        fontSize: AppDimensions.defaultSize * 16,
                      ),
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 4),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.only(right: AppDimensions.getDimensions(requiredWidth: 12)),
                      child: Text(
                        AppStrings.kHintTextStatisticsGroups,
                        style: TextStyle(
                            fontSize: AppDimensions.defaultSize * 11,
                            fontWeight: FontWeight.w700,
                            color: AppColors.kSentGreyTextGroups),
                      ),
                    ),
                  ],
                ),
              );
            },
            separatorBuilder: (context, index) {
              return SizedBox(
                height: AppDimensions.getDimensions(requiredHeight: 8),
              );
            },
            itemCount: 3),
      ],
    );
  }
}
