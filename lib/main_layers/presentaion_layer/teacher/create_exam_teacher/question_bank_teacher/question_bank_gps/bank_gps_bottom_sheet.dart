import 'package:assiut_project/core/app_constants/app_assets.dart';
import 'package:assiut_project/core/app_constants/app_colors.dart';
import 'package:assiut_project/core/app_constants/app_strings.dart';
import 'package:assiut_project/core/app_dimensions.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_button_grey.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_button_red.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_text_blue.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_text_grey.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/separator.dart';
import 'package:flutter/material.dart';

class BankGPSBottomSheet extends StatelessWidget {
  const BankGPSBottomSheet({
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
              height: AppDimensions.getDimensions(requiredHeight: 385),
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
                      height: AppDimensions.getDimensions(requiredHeight: 14),
                    ),
                    const Align(
                      alignment: Alignment.center,
                      child: Separator(
                        designHeight: 4,
                        designWidth: 68,
                      ),
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 10),
                    ),
                    const MainTextBlue(
                      myText: AppStrings.kQuestionsTypeCreateExam,
                      color: AppColors.kMainBlueC4,
                      fontSize: 16,
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 11),
                    ),
                    Container(
                      height: AppDimensions.getDimensions(requiredHeight: 45),
                      width: AppDimensions.getDimensions(requiredWidth: 320),
                      padding: EdgeInsets.symmetric(
                          horizontal: AppDimensions.getDimensions(requiredWidth: 15)),
                      decoration: BoxDecoration(
                          color: AppColors.kMainGeryFA, borderRadius: BorderRadius.circular(10)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          const MainTextGrey(
                            myText: AppStrings.kChooseQCreateExam,
                            fontSize: 12,
                          ),
                          SizedBox(
                            width: AppDimensions.getDimensions(requiredWidth: 6),
                          ),
                          Checkbox(
                            value: false,
                            side: const BorderSide(
                              color: AppColors.kMainBlueAA,
                            ),
                            activeColor: AppColors.kMainBlueAA,
                            onChanged: (value) {},
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 12),
                    ),
                    Container(
                      height: AppDimensions.getDimensions(requiredHeight: 45),
                      width: AppDimensions.getDimensions(requiredWidth: 320),
                      padding: EdgeInsets.symmetric(
                          horizontal: AppDimensions.getDimensions(requiredWidth: 15)),
                      decoration: BoxDecoration(
                          color: AppColors.kMainGeryFA, borderRadius: BorderRadius.circular(10)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          const MainTextGrey(
                            myText: AppStrings.kCompleteQCreateExam,
                            fontSize: 12,
                          ),
                          SizedBox(
                            width: AppDimensions.getDimensions(requiredWidth: 6),
                          ),
                          Checkbox(
                            value: false,
                            side: const BorderSide(
                              color: AppColors.kMainBlueAA,
                            ),
                            activeColor: AppColors.kMainBlueAA,
                            onChanged: (value) {},
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 12),
                    ),
                    Container(
                      height: AppDimensions.getDimensions(requiredHeight: 45),
                      width: AppDimensions.getDimensions(requiredWidth: 320),
                      padding: EdgeInsets.symmetric(
                          horizontal: AppDimensions.getDimensions(requiredWidth: 15)),
                      decoration: BoxDecoration(
                          color: AppColors.kMainGeryFA, borderRadius: BorderRadius.circular(10)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          const MainTextGrey(
                            myText: AppStrings.kArticleQCreateExam,
                            fontSize: 12,
                          ),
                          SizedBox(
                            width: AppDimensions.getDimensions(requiredWidth: 6),
                          ),
                          Checkbox(
                            value: false,
                            side: const BorderSide(
                              color: AppColors.kMainBlueAA,
                            ),
                            activeColor: AppColors.kMainBlueAA,
                            onChanged: (value) {},
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 12),
                    ),
                    Container(
                      height: AppDimensions.getDimensions(requiredHeight: 45),
                      width: AppDimensions.getDimensions(requiredWidth: 320),
                      padding: EdgeInsets.symmetric(
                          horizontal: AppDimensions.getDimensions(requiredWidth: 15)),
                      decoration: BoxDecoration(
                          color: AppColors.kMainGeryFA, borderRadius: BorderRadius.circular(10)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          const MainTextGrey(
                            myText: AppStrings.kTrueOrFalseQCreateExam,
                            fontSize: 12,
                          ),
                          SizedBox(
                            width: AppDimensions.getDimensions(requiredWidth: 6),
                          ),
                          Checkbox(
                            value: false,
                            side: const BorderSide(
                              color: AppColors.kMainBlueAA,
                            ),
                            activeColor: AppColors.kMainBlueAA,
                            onChanged: (value) {},
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 12),
                    ),
                    const Spacer(),
                    Row(
                      children: [
                        MainButtonGrey(
                          buttonName: AppStrings.kBackQCreateExam,
                          requiredWidth: 148,
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                        SizedBox(
                          width: AppDimensions.getDimensions(requiredWidth: 9),
                        ),
                        MainButtonRed(
                          buttonName: AppStrings.kCreateQCreateExam,
                          requiredWidth: 148,
                          onPressed: () {},
                        )
                      ],
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 30),
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
      child: Image.asset(
        AppAssets.kMixer,
        height: AppDimensions.getDimensions(requiredHeight: 24),
        width: AppDimensions.getDimensions(requiredWidth: 24),
      ),
    );
  }
}
