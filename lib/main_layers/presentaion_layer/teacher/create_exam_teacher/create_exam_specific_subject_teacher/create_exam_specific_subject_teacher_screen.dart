import 'package:assiut_project/core/app_constants/app_assets.dart';
import 'package:assiut_project/core/app_constants/app_colors.dart';
import 'package:assiut_project/core/app_constants/app_strings.dart';
import 'package:assiut_project/core/app_dimensions.dart';
import 'package:assiut_project/core/app_routes.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/custom_widgets/main_app_bar.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/custom_widgets/main_button_red.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/custom_widgets/main_text_black.dart';
import 'package:flutter/material.dart';

import 'custom_expanded_question.dart';

class CreateExamSpecificSubjectTeacher extends StatelessWidget {
  const CreateExamSpecificSubjectTeacher({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context: context, designHeight: 778, designWidth: 360);
    return Scaffold(
      body: Column(
        children: [
          const MainAppBar(
            designHeight: 1006,
            designWidth: 360,
            myTitle: AppStrings.kCreateExam,
          ),
          Container(
            height: AppDimensions.getDimensions(requiredHeight: 61),
            width: AppDimensions.getDimensions(requiredWidth: 360),
            color: AppColors.kMainGreenCD,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      AppStrings.kPhilosophyCreateExam,
                      textAlign: TextAlign.end,
                      textDirection: TextDirection.rtl,
                      style: TextStyle(
                          fontFamily: 'Almarai',
                          color: AppColors.kMainGreen45,
                          fontWeight: FontWeight.w700,
                          fontSize: 20),
                    ),
                    MainTextBlack(
                      myText: AppStrings.kFourUnitsCreateExam,
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      textDirection: TextDirection.rtl,
                    ),
                  ],
                ),
                SizedBox(
                  width: AppDimensions.getDimensions(requiredWidth: 8),
                ),
                Container(
                  height: AppDimensions.getDimensions(requiredHeight: 40),
                  width: AppDimensions.getDimensions(requiredWidth: 40),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.kMainGreen45,
                  ),
                  child: Image.asset(
                    AppAssets.kOldMan,
                    height: AppDimensions.getDimensions(requiredHeight: 28),
                    width: AppDimensions.getDimensions(requiredWidth: 28),
                  ),
                ),
                SizedBox(
                  width: AppDimensions.getDimensions(requiredWidth: 8),
                ),
                Icon(
                  Icons.arrow_forward_ios_outlined,
                  color: AppColors.kMainGreen45,
                  size: AppDimensions.getDimensions(
                    requiredWidth: 22,
                  ),
                ),
                SizedBox(
                  width: AppDimensions.getDimensions(requiredWidth: 20),
                ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 23),
                    ),
                    const MainTextBlack(
                      myText: AppStrings.kContentsCreateExam,
                      fontSize: 14,
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 11),
                    ),
                    const CustomExpandedUnits(),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 30),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: MainButtonRed(
                        buttonName: AppStrings.kResumptionCreateExam,
                        onPressed: () {
                          Navigator.pushNamed(context, RoutesManager.questionClassificationTeacher);
                        },
                      ),
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 30),
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
