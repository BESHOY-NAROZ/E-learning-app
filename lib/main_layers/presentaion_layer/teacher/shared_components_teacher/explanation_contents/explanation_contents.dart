import 'package:assiut_project/core/app_constants/app_assets.dart';
import 'package:assiut_project/core/app_constants/app_colors.dart';
import 'package:assiut_project/core/app_constants/app_strings.dart';
import 'package:assiut_project/core/app_dimensions.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/custom_widgets/main_text_grey.dart';
import 'package:assiut_project/main_layers/presentaion_layer/teacher/shared_components_teacher/explanation_contents/remove_attachment_bottom_sheet.dart';
import 'package:flutter/material.dart';

class ExplanationContents extends StatelessWidget {
  const ExplanationContents({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context: context, designHeight: 778, designWidth: 360);

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          height: AppDimensions.getDimensions(requiredHeight: 143),
          width: AppDimensions.getDimensions(requiredWidth: 143),
          padding: EdgeInsets.symmetric(
            vertical: AppDimensions.getDimensions(requiredHeight: 5),
          ),
          decoration:
              BoxDecoration(borderRadius: BorderRadius.circular(8), color: AppColors.kMainGeryFA),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: AppDimensions.getDimensions(requiredWidth: 7),
                ),
                child: Row(
                  children: [
                    RemoveAttachmentBottomSheet(),
                    const Spacer(),
                    MainTextGrey(
                      myText: AppStrings.explainingVideoAttached,
                      color: AppColors.kMainGery7A,
                      fontSize: AppDimensions.defaultSize * 12,
                    ),
                    SizedBox(
                      width: AppDimensions.getDimensions(requiredWidth: 2),
                    ),
                    Image.asset(
                      AppAssets.kVideo,
                      height: AppDimensions.getDimensions(requiredHeight: 12),
                      width: AppDimensions.getDimensions(requiredWidth: 12),
                    )
                  ],
                ),
              ),
              Spacer(),
              Image.asset(
                AppAssets.kYouTube,
                height: AppDimensions.getDimensions(requiredHeight: 80),
                width: AppDimensions.getDimensions(requiredWidth: 143),
              ),
              Spacer(),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: AppDimensions.getDimensions(requiredWidth: 7),
                ),
                child: Row(
                  children: [
                    MainTextGrey(
                      myText: AppStrings.sizeAttached,
                      color: AppColors.kMainGeryDA,
                      fontSize: AppDimensions.defaultSize * 12,
                      fontWeight: FontWeight.w400,
                    ),
                    Spacer(),
                    MainTextGrey(
                      myText: AppStrings.dateAttached,
                      color: AppColors.kMainGeryDA,
                      fontWeight: FontWeight.w400,
                      fontSize: AppDimensions.defaultSize * 12,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
          height: AppDimensions.getDimensions(requiredHeight: 143),
          width: AppDimensions.getDimensions(requiredWidth: 143),
          padding: EdgeInsets.symmetric(
            vertical: AppDimensions.getDimensions(requiredHeight: 5),
          ),
          decoration:
              BoxDecoration(borderRadius: BorderRadius.circular(8), color: AppColors.kMainGeryFA),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: AppDimensions.getDimensions(requiredWidth: 7),
                ),
                child: Row(
                  children: [
                    RemoveAttachmentBottomSheet(),
                    const Spacer(),
                    MainTextGrey(
                      myText: AppStrings.explainingFileAttached,
                      color: AppColors.kMainGery7A,
                      fontSize: AppDimensions.defaultSize * 12,
                    ),
                    SizedBox(
                      width: AppDimensions.getDimensions(requiredWidth: 2),
                    ),
                    Image.asset(
                      AppAssets.kEditFile,
                      height: AppDimensions.getDimensions(requiredHeight: 12),
                      width: AppDimensions.getDimensions(requiredWidth: 12),
                    )
                  ],
                ),
              ),
              Spacer(),
              Column(
                children: [
                  Image.asset(
                    AppAssets.kPDF,
                    height: AppDimensions.getDimensions(requiredHeight: 34),
                    width: AppDimensions.getDimensions(requiredWidth: 34),
                  ),
                  MainTextGrey(
                    myText: AppStrings.scheduleAttached,
                    color: AppColors.kMainGery7A,
                    fontWeight: FontWeight.w400,
                    fontSize: AppDimensions.defaultSize * 12,
                  ),
                ],
              ),
              Spacer(),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: AppDimensions.getDimensions(requiredWidth: 7),
                ),
                child: Row(
                  children: [
                    MainTextGrey(
                      myText: AppStrings.sizeAttached,
                      color: AppColors.kMainGeryDA,
                      fontSize: AppDimensions.defaultSize * 12,
                      fontWeight: FontWeight.w400,
                    ),
                    Spacer(),
                    MainTextGrey(
                      myText: AppStrings.dateAttached,
                      color: AppColors.kMainGeryDA,
                      fontWeight: FontWeight.w400,
                      fontSize: AppDimensions.defaultSize * 12,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
