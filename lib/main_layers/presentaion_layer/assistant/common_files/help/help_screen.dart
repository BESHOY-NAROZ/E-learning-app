import 'package:assiut_project/core/app_constants/app_assets.dart';
import 'package:assiut_project/core/app_constants/app_colors.dart';
import 'package:assiut_project/core/app_constants/app_strings.dart';
import 'package:assiut_project/core/app_dimensions.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/custom_widgets/main_app_bar.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/custom_widgets/main_text_black.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/custom_widgets/main_text_grey.dart';
import 'package:flutter/material.dart';

class HelpBody extends StatelessWidget {
  const HelpBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context: context, designHeight: 778, designWidth: 360);
    return Scaffold(
      body: Column(
        children: [
          const MainAppBar(
            designHeight: 1006,
            designWidth: 360,
            myTitle: AppStrings.kHelpCommon,
          ),
          SizedBox(
            height: AppDimensions.getDimensions(requiredHeight: 18),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                MainTextBlack(
                  myText: AppStrings.kProgramDescCommon,
                  fontSize: AppDimensions.defaultSize * 18,
                ),
                SizedBox(
                  height: AppDimensions.getDimensions(requiredHeight: 8),
                ),
                MainTextGrey(
                  myText: AppStrings.kFirstUnderMainTextCommon,
                  color: AppColors.kHintCommon,
                  fontSize: AppDimensions.defaultSize * 12,
                ),
                MainTextGrey(
                  myText: AppStrings.kSecondUnderMainTextCommon,
                  color: AppColors.kHintCommon,
                  fontSize: AppDimensions.defaultSize * 12,
                ),
                MainTextGrey(
                  myText: AppStrings.kThirdUnderMainTextCommon,
                  color: AppColors.kHintCommon,
                  fontSize: AppDimensions.defaultSize * 12,
                ),
                SizedBox(
                  height: AppDimensions.getDimensions(requiredHeight: 28),
                ),
                Center(
                  child: SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 155),
                      width: AppDimensions.getDimensions(requiredWidth: 211),
                      child: Image.asset(
                        AppAssets.kImageHelp,
                        fit: BoxFit.fill,
                      )),
                ),
                SizedBox(
                  height: AppDimensions.getDimensions(requiredHeight: 11),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: AppDimensions.getDimensions(
                      requiredWidth: 16,
                    ),
                    right: AppDimensions.getDimensions(requiredWidth: 16),
                  ),
                  child: Container(
                    width: AppDimensions.getDimensions(
                      requiredWidth: 328,
                    ),
                    height: AppDimensions.getDimensions(requiredHeight: 3),
                    color: AppColors.kSplitterMainScreenHome,
                  ),
                ),
                SizedBox(
                  height: AppDimensions.getDimensions(requiredHeight: 11),
                ),
                MainTextBlack(
                  myText: AppStrings.kProgramPointsDescCommon,
                  fontSize: AppDimensions.defaultSize * 18,
                ),
                SizedBox(
                  height: AppDimensions.getDimensions(requiredHeight: 8),
                ),
                MainTextGrey(
                  myText: AppStrings.kFirstUnderMainTextCommon,
                  color: AppColors.kHintCommon,
                  fontSize: AppDimensions.defaultSize * 12,
                ),
                MainTextGrey(
                  myText: AppStrings.kSecondUnderMainTextCommon,
                  color: AppColors.kHintCommon,
                  fontSize: AppDimensions.defaultSize * 12,
                ),
                MainTextGrey(
                  myText: AppStrings.kThirdUnderMainTextCommon,
                  color: AppColors.kHintCommon,
                  fontSize: AppDimensions.defaultSize * 12,
                ),
                SizedBox(
                  height: AppDimensions.getDimensions(requiredHeight: 28),
                ),
                Center(
                  child: SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 155),
                      width: AppDimensions.getDimensions(requiredWidth: 211),
                      child: Image.asset(
                        AppAssets.kImageHelp,
                        fit: BoxFit.fill,
                      )),
                ),
                SizedBox(
                  height: AppDimensions.getDimensions(requiredHeight: 11),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: AppDimensions.getDimensions(
                      requiredWidth: 16,
                    ),
                    right: AppDimensions.getDimensions(requiredWidth: 16),
                  ),
                  child: Container(
                    width: AppDimensions.getDimensions(
                      requiredWidth: 328,
                    ),
                    height: AppDimensions.getDimensions(requiredHeight: 3),
                    color: AppColors.kSplitterMainScreenHome,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
