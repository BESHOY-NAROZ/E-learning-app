import 'package:assiut_project/core/app_constants/app_assets.dart';
import 'package:assiut_project/core/app_constants/app_colors.dart';
import 'package:assiut_project/core/app_constants/app_strings.dart';
import 'package:assiut_project/core/app_dimensions.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/custom_widgets/main_text_black.dart';
import 'package:flutter/material.dart';

class SubjectsList extends StatelessWidget {
  const SubjectsList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context: context, designHeight: 974, designWidth: 360);
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Row(
          children: [
            Container(
              width: AppDimensions.getDimensions(requiredWidth: 105),
              height: AppDimensions.getDimensions(requiredHeight: 40),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: AppColors.kPhilosophyProfileEditing),
              child: Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: AppDimensions.getDimensions(requiredWidth: 6)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.close,
                      color: AppColors.kMainTextBlack,
                    ),
                    MainTextBlack(
                      myText: AppStrings.kPhilosophyProfileEditingTeacher,
                      fontSize: AppDimensions.defaultSize * 11,
                    ),
                    Image.asset(
                      AppAssets.kPhilosophy,
                      width: AppDimensions.getDimensions(requiredWidth: 20),
                      height: AppDimensions.getDimensions(requiredHeight: 20),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
        SizedBox(
          width: AppDimensions.getDimensions(requiredWidth: 10),
        ),
        Row(
          children: [
            Container(
              width: AppDimensions.getDimensions(requiredWidth: 105),
              height: AppDimensions.getDimensions(requiredHeight: 40),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8), color: AppColors.kDynamicsProfileEditing),
              child: Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: AppDimensions.getDimensions(requiredWidth: 6)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.close,
                      color: AppColors.kMainTextBlack,
                    ),
                    MainTextBlack(
                      myText: AppStrings.kDynamicsProfileEditingTeacher,
                      fontSize: AppDimensions.defaultSize * 11,
                    ),
                    Image.asset(
                      AppAssets.kDynamics,
                      width: AppDimensions.getDimensions(requiredWidth: 20),
                      height: AppDimensions.getDimensions(requiredHeight: 20),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ],
    );
  }
}
