import 'package:assiut_project/core/app_constants/app_assets.dart';
import 'package:assiut_project/core/app_constants/app_colors.dart';
import 'package:assiut_project/core/app_constants/app_strings.dart';
import 'package:assiut_project/core/app_dimensions.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_text_black.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_text_grey.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class GiftContainerPointsProgram extends StatelessWidget {
  const GiftContainerPointsProgram({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context: context, designHeight: 826, designWidth: 360);

    return Container(
        height: AppDimensions.getDimensions(requiredHeight: 189),
        width: AppDimensions.getDimensions(requiredWidth: 320),
        decoration: BoxDecoration(
          color: AppColors.kContainerCommon,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MainTextBlack(
              myText: AppStrings.kIncreasePointsProgram,
              textDirection: TextDirection.rtl,
              fontSize: AppDimensions.defaultSize * 18,
            ),
            SizedBox(
              height: AppDimensions.getDimensions(requiredHeight: 4),
            ),
            SizedBox(
              height: AppDimensions.getDimensions(requiredHeight: 96),
              width: AppDimensions.getDimensions(requiredWidth: 96),
              child: Image.asset(AppAssets.kGift),
            ),
            SizedBox(
              height: AppDimensions.getDimensions(requiredHeight: 44),
              width: AppDimensions.getDimensions(requiredWidth: 160),
              child: DottedBorder(
                color: AppColors.kLoginEmailOrPhone,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MainTextGrey(
                        myText: AppStrings.kCopyPointsProgram,
                        fontSize: AppDimensions.defaultSize * 14),
                    SizedBox(width: AppDimensions.getDimensions(requiredWidth: 8)),
                    Container(
                      width: AppDimensions.getDimensions(requiredWidth: 2),
                      height: AppDimensions.getDimensions(requiredHeight: 21),
                      color: AppColors.kLoginEmailOrPhone,
                    ),
                    SizedBox(width: AppDimensions.getDimensions(requiredWidth: 22)),
                    Column(
                      children: [
                        MainTextGrey(
                            myText: AppStrings.kCodePointsProgram,
                            fontSize: AppDimensions.defaultSize * 12),
                        MainTextGrey(
                            myText: AppStrings.kActualCopyPointsProgram,
                            fontSize: AppDimensions.defaultSize * 14),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
