import 'package:assiut_project/core/app_constants/app_assets.dart';
import 'package:assiut_project/core/app_constants/app_colors.dart';
import 'package:assiut_project/core/app_constants/app_strings.dart';
import 'package:assiut_project/core/app_dimensions.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/custom_widgets/main_button_red.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/custom_widgets/main_text_black.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/custom_widgets/main_text_grey.dart';
import 'package:flutter/material.dart';

class QuestionDetailsMainFourButtons extends StatelessWidget {
  const QuestionDetailsMainFourButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context: context, designHeight: 778, designWidth: 360);

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          height: AppDimensions.getDimensions(requiredHeight: 28),
          width: AppDimensions.getDimensions(requiredWidth: 66),
          alignment: Alignment.center,
          decoration:
              BoxDecoration(borderRadius: BorderRadius.circular(8), color: AppColors.kMainGeryFA),
          child: MainTextGrey(
            myText: AppStrings.kShowTheAnswerExams,
            fontSize: AppDimensions.defaultSize * 10,
          ),
        ),
        InkWell(
          onTap: () {
            showModalBottomSheet(
              context: context,
              isScrollControlled: true,
              constraints: const BoxConstraints(
                maxWidth: double.infinity,
              ),
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
            height: AppDimensions.getDimensions(requiredHeight: 28),
            width: AppDimensions.getDimensions(requiredWidth: 66),
            alignment: Alignment.center,
            decoration:
                BoxDecoration(borderRadius: BorderRadius.circular(8), color: AppColors.kMainGeryFA),
            child: MainTextGrey(
              myText: AppStrings.kAnswerVideoExams,
              fontSize: AppDimensions.defaultSize * 10,
            ),
          ),
        ),
        InkWell(
          onTap: () {
            showModalBottomSheet(
              context: context,
              isScrollControlled: true,
              constraints: const BoxConstraints(
                maxWidth: double.infinity,
              ),
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
                            MainTextBlack(
                              myText: AppStrings.kSolvingWayExamEditing,
                              fontSize: AppDimensions.defaultSize * 18,
                            ),
                            SizedBox(
                              width: AppDimensions.getDimensions(requiredWidth: 5),
                            ),
                            Image.asset(
                              AppAssets.kEditFile,
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
                        MainTextGrey(
                          myText: AppStrings.kActualSolvingIdeaExamEditing,
                          fontSize: AppDimensions.defaultSize * 14,
                        ),
                        SizedBox(
                          height: AppDimensions.getDimensions(
                            requiredHeight: 10,
                          ),
                        ),
                        MainTextGrey(
                          myText: AppStrings.kActualSolvingIdeaExamEditing,
                          fontSize: AppDimensions.defaultSize * 14,
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
            height: AppDimensions.getDimensions(requiredHeight: 28),
            width: AppDimensions.getDimensions(requiredWidth: 66),
            alignment: Alignment.center,
            decoration:
                BoxDecoration(borderRadius: BorderRadius.circular(8), color: AppColors.kMainGeryFA),
            child: MainTextGrey(
              myText: AppStrings.kSolutionWayExams,
              fontSize: AppDimensions.defaultSize * 10,
            ),
          ),
        ),
        InkWell(
          onTap: () {
            showModalBottomSheet(
              context: context,
              isScrollControlled: true,
              constraints: const BoxConstraints(
                maxWidth: double.infinity,
              ),
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
                            MainTextBlack(
                              myText: AppStrings.kSolvingIdeaExamEditing,
                              fontSize: AppDimensions.defaultSize * 18,
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
                        MainTextGrey(
                          myText: AppStrings.kActualSolvingIdeaExamEditing,
                          fontSize: AppDimensions.defaultSize * 14,
                        ),
                        SizedBox(
                          height: AppDimensions.getDimensions(
                            requiredHeight: 10,
                          ),
                        ),
                        MainTextGrey(
                          myText: AppStrings.kActualSolvingIdeaExamEditing,
                          fontSize: AppDimensions.defaultSize * 14,
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
            height: AppDimensions.getDimensions(requiredHeight: 28),
            width: AppDimensions.getDimensions(requiredWidth: 66),
            alignment: Alignment.center,
            decoration:
                BoxDecoration(borderRadius: BorderRadius.circular(8), color: AppColors.kMainGeryFA),
            child: MainTextGrey(
              myText: AppStrings.kSolutionIdeaExams,
              fontSize: AppDimensions.defaultSize * 10,
            ),
          ),
        ),
      ],
    );
  }
}
