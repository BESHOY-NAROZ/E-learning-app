import 'package:assiut_project/core/app_constants/app_assets.dart';
import 'package:assiut_project/core/app_constants/app_colors.dart';
import 'package:assiut_project/core/app_constants/app_strings.dart';
import 'package:assiut_project/core/app_dimensions.dart';
import 'package:assiut_project/main_layers/presentaion_layer/groups/shared_components_groups/app_bar_groups.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_bottom_navigaton_bar.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_text_black.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_text_green.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_text_grey.dart';
import 'package:flutter/material.dart';


class MainResultContainer extends StatelessWidget {

  final String ? topLeftText;
  final String ? bottomLeftText;
  final String ? topRightText;
  final String ? bottomRightText;
  final double ? widthSpacer;

  const MainResultContainer({
    super.key, this.topLeftText, this.bottomLeftText, this.topRightText, this.bottomRightText, this.widthSpacer,
  });

  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context: context, designHeight: 1108, designWidth: 360);

    return Container(
      padding: EdgeInsets.zero,
      height: AppDimensions.getDimensions(requiredHeight: 80),
      width: AppDimensions.getDimensions(requiredWidth: 320),
      decoration: BoxDecoration(
          color: AppColors.kSentExamsContainerGroups,
          borderRadius: BorderRadius.circular(8)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
               Text(
               topLeftText!,
                style: const TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.w700,
                    color: AppColors.kSentGreyTextGroups),
              ),
              SizedBox(
                height:
                AppDimensions.getDimensions(requiredHeight: 3),
              ),
               MainTextGreen(
                myText: bottomLeftText,
                fontSize: 20,
              )
            ],
          ),
          SizedBox(
            width: AppDimensions.getDimensions(requiredWidth: 30),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                vertical:
                AppDimensions.getDimensions(requiredHeight: 2)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(5, (index) {
                return Container(
                  width:
                  AppDimensions.getDimensions(requiredWidth: 2),
                  height: AppDimensions.getDimensions(
                      requiredHeight: 10),
                  color: AppColors.kHintTextMainScreenHome,
                );
              }),
            ),
          ),
          SizedBox(
            width: AppDimensions.getDimensions(requiredWidth: widthSpacer ??
                52),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
               MainTextBlack(
                myText: topRightText,
                fontSize: 16,
              ),
              SizedBox(
                height:
                AppDimensions.getDimensions(requiredHeight: 4),
              ),
               Text(
               bottomRightText!,
                style: const TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.w700,
                    color: AppColors.kSentGreyTextGroups),
              ),
            ],
          ),
          SizedBox(
            width: AppDimensions.getDimensions(requiredWidth: 9),
          ),
        ],
      ),
    );
  }
}