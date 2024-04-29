import 'package:assiut_project/core/app_constants/app_assets.dart';
import 'package:assiut_project/core/app_constants/app_colors.dart';
import 'package:assiut_project/core/app_constants/app_strings.dart';
import 'package:assiut_project/core/app_dimensions.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_button_red.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_text_black.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_text_grey.dart';
import 'package:flutter/material.dart';

class VideoBottomSheet extends StatelessWidget {
  const VideoBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context: context, designHeight: 778, designWidth: 360);
    return InkWell(
        onTap: () {
          showModalBottomSheet(
            context: context,
            builder: (context) {
              return Container(
                width: AppDimensions.getDimensions(requiredWidth: 360),
                height: AppDimensions.getDimensions(requiredHeight: 317),
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                    color: AppColors.kMainTextWhite, borderRadius: BorderRadius.circular(20)),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: AppDimensions.getDimensions(requiredWidth: 20),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          MainTextBlack(
                            myText: AppStrings.kSolvingVideoExamEditing,
                            fontSize: AppDimensions.defaultSize * 18,
                          ),
                          SizedBox(
                            width: AppDimensions.getDimensions(requiredWidth: 5),
                          ),
                          Image.asset(
                            AppAssets.kVideo,
                            height: AppDimensions.getDimensions(requiredHeight: 24),
                            width: AppDimensions.getDimensions(requiredWidth: 24),
                          )
                        ],
                      ),
                      Image.asset(
                        AppAssets.kYouTube,
                        height: AppDimensions.getDimensions(requiredHeight: 213),
                        width: AppDimensions.getDimensions(requiredWidth: 341),
                      ),
                      SizedBox(
                        height: AppDimensions.getDimensions(
                          requiredHeight: 10,
                        ),
                      ),
                      MainButtonRed(
                        buttonName: AppStrings.kCompleteExamEditing,
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      )
                    ],
                  ),
                ),
              );
            },
          );
        },
        child: Container(
          height: AppDimensions.getDimensions(requiredHeight: 45),
          width: AppDimensions.getDimensions(requiredWidth: 156),
          decoration:
              BoxDecoration(borderRadius: BorderRadius.circular(8), color: AppColors.kMainGeryFA),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const MainTextGrey(
                myText: AppStrings.kAnswerVideoExams,
              ),
              SizedBox(
                width: AppDimensions.getDimensions(requiredWidth: 5),
              ),
              Image.asset(
                AppAssets.kVideo,
                color: AppColors.kMainTextBlack,
                height: AppDimensions.getDimensions(requiredHeight: 20),
                width: AppDimensions.getDimensions(requiredWidth: 20),
              ),
            ],
          ),
        ));
  }
}
