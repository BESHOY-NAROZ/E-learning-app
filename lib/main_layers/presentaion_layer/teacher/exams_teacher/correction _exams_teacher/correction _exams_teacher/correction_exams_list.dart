import 'package:assiut_project/core/app_constants/app_assets.dart';
import 'package:assiut_project/core/app_constants/app_colors.dart';
import 'package:assiut_project/core/app_constants/app_strings.dart';
import 'package:assiut_project/core/app_dimensions.dart';
import 'package:assiut_project/core/app_routes.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_text_black.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_text_white.dart';
import 'package:flutter/material.dart';

class CorrectionExamsListTeacher extends StatelessWidget {
  const CorrectionExamsListTeacher({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context: context, designHeight: 778, designWidth: 360);
    return Container(
      height: AppDimensions.getDimensions(requiredHeight: 100),
      width: AppDimensions.getDimensions(requiredWidth: 320),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8), color: AppColors.kSentExamsContainerGroups),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          SizedBox(
            height: AppDimensions.getDimensions(requiredHeight: 5),
          ),
          Padding(
            padding: EdgeInsets.only(right: AppDimensions.getDimensions(requiredWidth: 9)),
            child: const MainTextBlack(
              myText: AppStrings.kExamsSentBlackTextGroups,
              fontSize: 16,
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(
            height: AppDimensions.getDimensions(requiredHeight: 5),
          ),
          Padding(
            padding: EdgeInsets.only(right: AppDimensions.getDimensions(requiredWidth: 9)),
            child: const Text(
              AppStrings.kExamsSentGreyTextGroups,
              style: TextStyle(
                  fontSize: 12, fontWeight: FontWeight.w700, color: AppColors.kSentGreyTextGroups),
            ),
          ),
          const Spacer(),
          Container(
            padding: EdgeInsets.zero,
            width: double.infinity,
            height: AppDimensions.getDimensions(requiredHeight: 40),
            decoration: const BoxDecoration(
                color: AppColors.kBottomContainerGroups,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(8), bottomRight: Radius.circular(8))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, RoutesManager.sendToAssistantTeacher);
                  },
                  child: Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
                    const MainTextWhite(
                      myText: AppStrings.kSendToAssiExams,
                      fontSize: 10,
                      fontWeight: FontWeight.w700,
                    ),
                    SizedBox(
                      width: AppDimensions.getDimensions(requiredWidth: 3),
                    ),
                    SizedBox(
                        width: AppDimensions.getDimensions(requiredWidth: 14),
                        height: AppDimensions.getDimensions(requiredHeight: 14),
                        child: Image.asset(
                          AppAssets.kShake,
                          color: AppColors.kMainTextWhite,
                        )),
                  ]),
                ),

                InkWell(
                  onTap: () {},
                  child: Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
                    const MainTextWhite(
                      myText: AppStrings.kOpenExams,
                      fontSize: 10,
                      fontWeight: FontWeight.w700,
                    ),
                    SizedBox(
                      width: AppDimensions.getDimensions(requiredWidth: 3),
                    ),
                    SizedBox(
                        width: AppDimensions.getDimensions(requiredWidth: 14),
                        height: AppDimensions.getDimensions(requiredHeight: 14),
                        child: Image.asset(
                          AppAssets.kShowExam,
                          color: AppColors.kMainTextWhite,
                        )),
                  ]),
                ),

                // SizedBox(
                //   width: AppDimensions.getDimensions(requiredWidth: 45),
                // ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
