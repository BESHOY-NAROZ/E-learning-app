import 'package:assiut_project/core/app_constants/app_assets.dart';
import 'package:assiut_project/core/app_constants/app_colors.dart';
import 'package:assiut_project/core/app_constants/app_strings.dart';
import 'package:assiut_project/core/app_dimensions.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_text_grey.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class DottedContainers extends StatelessWidget {
  const DottedContainers({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        DottedBorder(
          radius: const Radius.circular(12),
          color: AppColors.kMainGeryD9,
          dashPattern: const [10, 6],
          strokeWidth: 2,
          strokeCap: StrokeCap.butt,
          child: SizedBox(
            height: AppDimensions.getDimensions(requiredHeight: 126),
            width: AppDimensions.getDimensions(requiredWidth: 143),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  AppAssets.kVideo2,
                  height: AppDimensions.getDimensions(requiredHeight: 45),
                  width: AppDimensions.getDimensions(requiredWidth: 45),
                ),
                SizedBox(
                  height: AppDimensions.getDimensions(requiredHeight: 10),
                ),
                MainTextGrey(
                  myText: AppStrings.kDownLoadVideoCreateCustomExam,
                  color: AppColors.kMainGery7A,
                  fontSize: AppDimensions.defaultSize * 12,
                )
              ],
            ),
          ),
        ),
        SizedBox(
          width: AppDimensions.getDimensions(requiredWidth: 18),
        ),
        DottedBorder(
          radius: const Radius.circular(12),
          color: AppColors.kMainGeryD9,
          dashPattern: const [10, 6],
          strokeWidth: 2,
          strokeCap: StrokeCap.butt,
          child: SizedBox(
            height: AppDimensions.getDimensions(requiredHeight: 126),
            width: AppDimensions.getDimensions(requiredWidth: 143),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RotationTransition(
                  turns: const AlwaysStoppedAnimation(10 / 360),
                  child: Image.asset(
                    AppAssets.kImage,
                    height: AppDimensions.getDimensions(requiredHeight: 45),
                    width: AppDimensions.getDimensions(requiredWidth: 45),
                  ),
                ),
                SizedBox(
                  height: AppDimensions.getDimensions(requiredHeight: 10),
                ),
                MainTextGrey(
                  myText: AppStrings.kDownLoadPicCreateCustomExam,
                  color: AppColors.kMainGery7A,
                  fontSize: AppDimensions.defaultSize * 12,
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
