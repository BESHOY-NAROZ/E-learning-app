import 'package:assiut_project/core/app_constants/app_colors.dart';
import 'package:assiut_project/core/app_constants/app_strings.dart';
import 'package:assiut_project/core/app_dimensions.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_text_black.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_text_grey.dart';
import 'package:flutter/material.dart';

class SentApprovalsList extends StatelessWidget {
  const SentApprovalsList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context: context, designHeight: 778, designWidth: 360);
    return Container(
      height: AppDimensions.getDimensions(requiredHeight: 92),
      width: AppDimensions.getDimensions(requiredWidth: 320),
      padding: const EdgeInsets.only(right: 45),
      decoration:
          BoxDecoration(color: AppColors.kMainGeryFA, borderRadius: BorderRadius.circular(10)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          MainTextBlack(
            myText: AppStrings.kApprovalsNameHintAssistantOfTeacher,
            fontSize: AppDimensions.defaultSize * 16,
          ),
          SizedBox(
            height: AppDimensions.getDimensions(requiredHeight: 10),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              MainTextGrey(
                myText: AppStrings.kActualApprovalsHintAssistantOfTeacher,
                fontSize: AppDimensions.defaultSize * 10,
                color: AppColors.kMainGery8D,
              ),
              SizedBox(
                width: AppDimensions.getDimensions(requiredWidth: 5),
              ),
              Container(
                height: AppDimensions.getDimensions(requiredHeight: 7),
                width: AppDimensions.getDimensions(requiredWidth: 7),
                decoration:
                    const ShapeDecoration(color: AppColors.kMainTextBlack, shape: OvalBorder()),
              )
            ],
          ),
          SizedBox(
            height: AppDimensions.getDimensions(requiredHeight: 5),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              MainTextGrey(
                myText: AppStrings.kActualApprovalsHintAssistantOfTeacher,
                fontSize: AppDimensions.defaultSize * 10,
                color: AppColors.kMainGery8D,
              ),
              SizedBox(
                width: AppDimensions.getDimensions(requiredWidth: 5),
              ),
              Container(
                height: AppDimensions.getDimensions(requiredHeight: 7),
                width: AppDimensions.getDimensions(requiredWidth: 7),
                decoration:
                    const ShapeDecoration(color: AppColors.kMainTextBlack, shape: OvalBorder()),
              )
            ],
          )
        ],
      ),
    );
  }
}
