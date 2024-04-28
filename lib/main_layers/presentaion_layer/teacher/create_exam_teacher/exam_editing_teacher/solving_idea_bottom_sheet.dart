import 'package:assiut_project/core/app_constants/app_assets.dart';
import 'package:assiut_project/core/app_constants/app_colors.dart';
import 'package:assiut_project/core/app_constants/app_strings.dart';
import 'package:assiut_project/core/app_dimensions.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_button_red.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_text_black.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_text_grey.dart';
import 'package:flutter/material.dart';

class SolvingIdeaBottomSheet extends StatelessWidget {
  const SolvingIdeaBottomSheet({
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
              height: AppDimensions.getDimensions(requiredHeight: 312),
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
                    SizedBox(
                      height: AppDimensions.getDimensions(
                        requiredHeight: 15,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const MainTextBlack(
                          myText: AppStrings.kSolvingIdeaExamEditing,
                          fontSize: 18,
                        ),
                        SizedBox(
                          width: AppDimensions.getDimensions(requiredWidth: 5),
                        ),
                        Image.asset(
                          AppAssets.kLight,
                          height: AppDimensions.getDimensions(requiredHeight: 24),
                          width: AppDimensions.getDimensions(requiredWidth: 24),
                        )
                      ],
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(
                        requiredHeight: 10,
                      ),
                    ),
                    const MainTextGrey(
                      myText: AppStrings.kActualSolvingIdeaExamEditing,
                      fontSize: 14,
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(
                        requiredHeight: 10,
                      ),
                    ),
                    const MainTextGrey(
                      myText: AppStrings.kActualSolvingIdeaExamEditing,
                      fontSize: 14,
                    ),
                    Spacer(),
                    MainButtonRed(
                      buttonName: AppStrings.kCompleteExamEditing,
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(
                        requiredHeight: 15,
                      ),
                    ),
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
              myText: AppStrings.kSolutionIdeaExams,
            ),
            SizedBox(
              width: AppDimensions.getDimensions(requiredWidth: 5),
            ),
            Image.asset(
              AppAssets.kLight,
              color: AppColors.kMainTextBlack,
              height: AppDimensions.getDimensions(requiredHeight: 20),
              width: AppDimensions.getDimensions(requiredWidth: 20),
            ),
          ],
        ),
      ),
    );
  }
}
