import 'package:assiut_project/core/app_constants/app_colors.dart';
import 'package:assiut_project/core/app_constants/app_strings.dart';
import 'package:assiut_project/core/app_dimensions.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/custom_widgets/main_text_black.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/custom_widgets/main_text_blue.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/custom_widgets/main_text_grey.dart';
import 'package:flutter/material.dart';

class QuestionBankList extends StatelessWidget {
  const QuestionBankList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context: context, designHeight: 778, designWidth: 360);
    return Container(
      height: AppDimensions.getDimensions(requiredHeight: 81),
      width: AppDimensions.getDimensions(requiredWidth: 320),
      padding: EdgeInsets.symmetric(horizontal: AppDimensions.getDimensions(requiredWidth: 12)),
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(8), color: AppColors.kMainGeryFA),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Row(
            children: [
              SizedBox(
                height: AppDimensions.getDimensions(requiredHeight: 24),
                width: AppDimensions.getDimensions(requiredWidth: 24),
                child: Checkbox(
                  value: false,
                  side: const BorderSide(
                    color: AppColors.kMainBlueAA,
                  ),
                  activeColor: AppColors.kMainBlueAA,
                  onChanged: (value) {},
                ),
              ),
              const Spacer(),
              const MainTextBlue(
                myText: AppStrings.kChooseCorrectAnswerCreateExam,
                color: AppColors.kMainBlueC4,
                fontSize: 16,
              )
            ],
          ),
          SizedBox(
            height: AppDimensions.getDimensions(requiredHeight: 7),
          ),
          const MainTextBlack(
            myText: AppStrings.kActualQCreateExam,
            textDirection: TextDirection.rtl,
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
          SizedBox(
            height: AppDimensions.getDimensions(requiredHeight: 2),
          ),
          const MainTextGrey(
            myText: AppStrings.kSpecificSubjectCreateExam,
            color: AppColors.kMainGery8D,
            fontSize: 10,
          )
        ],
      ),
    );
  }
}
