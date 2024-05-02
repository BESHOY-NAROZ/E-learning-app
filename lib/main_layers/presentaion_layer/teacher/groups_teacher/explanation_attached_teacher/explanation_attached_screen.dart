import 'package:assiut_project/core/app_constants/app_assets.dart';
import 'package:assiut_project/core/app_constants/app_colors.dart';
import 'package:assiut_project/core/app_constants/app_strings.dart';
import 'package:assiut_project/core/app_dimensions.dart';
import 'package:assiut_project/core/app_routes.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/custom_widgets/main_app_bar.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/custom_widgets/main_text_black.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/custom_widgets/main_text_grey.dart';
import 'package:assiut_project/main_layers/presentaion_layer/teacher/shared_components_teacher/explanation_contents/explanation_contents.dart';
import 'package:flutter/material.dart';

class ExplanationAttachedTeacher extends StatelessWidget {
  const ExplanationAttachedTeacher({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context: context, designHeight: 778, designWidth: 360);
    return Scaffold(
      body: Column(
        children: [
          const MainAppBar(
            designHeight: 1006,
            designWidth: 360,
            myTitle: AppStrings.kExplanationAttachedTeacher,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 26),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            MainTextBlack(
                              myText: AppStrings.transitionalElementsNewAttached,
                              fontSize: AppDimensions.defaultSize * 16,
                              color: AppColors.kMainBlack,
                            ),
                            SizedBox(
                              height: AppDimensions.getDimensions(requiredHeight: 3),
                            ),
                            MainTextGrey(
                              myText: AppStrings.biologyNewAttached,
                              fontSize: AppDimensions.defaultSize * 10,
                              color: AppColors.kMainGery8D,
                            )
                          ],
                        ),
                        SizedBox(
                          width: AppDimensions.getDimensions(requiredWidth: 11),
                        ),
                        Image.asset(
                          AppAssets.kAttached,
                          color: AppColors.kMainBlack,
                          height: AppDimensions.getDimensions(requiredHeight: 30),
                          width: AppDimensions.getDimensions(requiredWidth: 30),
                        )
                      ],
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 30),
                    ),
                    MainTextBlack(
                      myText: AppStrings.explainingTextAttached,
                      fontSize: AppDimensions.defaultSize * 16,
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 8),
                    ),
                    MainTextGrey(
                      myText: AppStrings.explainingTextActualAttached,
                      color: AppColors.kMainGery7A,
                      fontSize: AppDimensions.defaultSize * 14,
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 45),
                    ),
                    const ExplanationContents(),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 25),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, RoutesManager.updateExplanation);
                      },
                      child: Container(
                        height: AppDimensions.getDimensions(requiredHeight: 45),
                        width: AppDimensions.getDimensions(requiredWidth: 156),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8), color: AppColors.kMainGeryFA),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const MainTextGrey(
                              myText: AppStrings.updateExplainingAttached,
                            ),
                            SizedBox(
                              width: AppDimensions.getDimensions(requiredWidth: 5),
                            ),
                            Image.asset(
                              AppAssets.kEdit,
                              color: AppColors.kMainTextBlack,
                              height: AppDimensions.getDimensions(requiredHeight: 20),
                              width: AppDimensions.getDimensions(requiredWidth: 20),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 90),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
