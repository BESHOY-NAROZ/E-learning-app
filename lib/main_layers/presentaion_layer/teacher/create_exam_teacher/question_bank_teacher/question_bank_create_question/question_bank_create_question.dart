import 'package:assiut_project/core/app_constants/app_assets.dart';
import 'package:assiut_project/core/app_constants/app_colors.dart';
import 'package:assiut_project/core/app_constants/app_lists.dart';
import 'package:assiut_project/core/app_constants/app_strings.dart';
import 'package:assiut_project/core/app_dimensions.dart';
import 'package:assiut_project/core/app_routes.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/custom_widgets/main_app_bar.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/custom_widgets/main_button_red.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/custom_widgets/main_text_black.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/custom_widgets/main_text_grey.dart';
import 'package:flutter/material.dart';

import 'bank_create_question_bottom_sheet.dart';

class CreateQuestionBankTeacher extends StatelessWidget {
  const CreateQuestionBankTeacher({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context: context, designHeight: 778, designWidth: 360);
    return Scaffold(
      body: Column(
        children: [
          const MainAppBar(
            designHeight: 1006,
            designWidth: 360,
            myTitle: AppStrings.kCreateQuestionCreateExam,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 20),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const MainTextBlack(
                          myText: AppStrings.kFirstTestCreateExam,
                          fontSize: 16,
                        ),
                        SizedBox(
                            height: AppDimensions.getDimensions(requiredHeight: 24),
                            width: AppDimensions.getDimensions(requiredWidth: 24),
                            child: Image.asset(AppAssets.kExamVector))
                      ],
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 6),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.only(right: AppDimensions.getDimensions(requiredWidth: 24)),
                      child: const MainTextGrey(
                        myText: AppStrings.kSpecificFirstTestCreateExam,
                        color: AppColors.kMainGery8D,
                        fontSize: 10,
                      ),
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 37),
                    ),
                    const MainTextGrey(
                      myText: AppStrings.kQuestionTypeCreateExam,
                      color: AppColors.kMainGery7A,
                      fontSize: 12,
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 37),
                    ),
                    const BankCreateQuestionBottomSheet(),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 360),
                    ),
                    MainButtonRed(
                      buttonName: AppStrings.kResumptionCreateExam,
                      onPressed: () {
                        if (BankCreateQuestionBottomSheet.currentRadio ==
                            AppLists.kQuestionTypeList[4]) {
                          Navigator.pushNamed(
                              context, RoutesManager.customExamWithOutSpecificTypeTeacher);
                        } else {
                          Navigator.pushNamed(context, RoutesManager.createCustomExamTeacher);
                        }
                      },
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
