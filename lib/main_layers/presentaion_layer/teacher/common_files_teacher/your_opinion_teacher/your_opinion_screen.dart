import 'package:assiut_project/core/app_constants/app_colors.dart';
import 'package:assiut_project/core/app_constants/app_strings.dart';
import 'package:assiut_project/core/app_dimensions.dart';
import 'package:assiut_project/core/app_routes.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/expanded_text_form_filed.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_app_bar.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_button_red.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_text_black.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_text_grey.dart';
import 'package:flutter/material.dart';
import 'package:rate/rate.dart';

class YourOpinionTeacher extends StatelessWidget {
  const YourOpinionTeacher({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context: context, designHeight: 778, designWidth: 360);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const MainAppBar(
              designHeight: 1006,
              designWidth: 360,
              myTitle: AppStrings.kYourOpinionCommon,
            ),
            SizedBox(
              height: AppDimensions.getDimensions(requiredHeight: 18),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const MainTextBlack(
                    myText: AppStrings.kUserOpinionCommon,
                    fontSize: 18,
                  ),
                  SizedBox(
                    height: AppDimensions.getDimensions(requiredHeight: 8),
                  ),
                  const MainTextGrey(
                    myText: AppStrings.kUserOpinionDescCommon,
                    color: AppColors.kHintCommon,
                    fontSize: 12,
                  ),
                  SizedBox(
                    height: AppDimensions.getDimensions(requiredHeight: 25),
                  ),
                  const MainTextGrey(
                    myText: AppStrings.kAppRateCommon,
                    fontSize: 13,
                  ),
                  SizedBox(
                    height: AppDimensions.getDimensions(requiredHeight: 20),
                  ),
                  Container(
                    height: AppDimensions.getDimensions(requiredHeight: 67),
                    width: AppDimensions.getDimensions(requiredWidth: 320),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: AppColors.kMainContainerNotificationCommon),
                    child: Center(
                      child: Rate(
                        iconSize: AppDimensions.getDimensions(requiredWidth: 40),
                        color: AppColors.kMainTextYellow,
                        allowHalf: true,
                        allowClear: true,
                        initialValue: 3.5,
                        readOnly: false,
                        onChange: (value) {},
                      ),
                    ),
                  ),
                  SizedBox(
                    height: AppDimensions.getDimensions(requiredHeight: 7),
                  ),
                  Row(
                    children: [
                      const MainTextGrey(
                        myText: AppStrings.kRatingCommon,
                        color: AppColors.kHintCommon,
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                      ),
                      SizedBox(
                        width: AppDimensions.getDimensions(requiredWidth: 4),
                      ),
                      const Icon(
                        Icons.star,
                        color: AppColors.kMainTextYellow,
                        size: 30,
                      )
                    ],
                  ),
                  SizedBox(
                    height: AppDimensions.getDimensions(requiredHeight: 20),
                  ),
                  const MainTextGrey(
                    myText: AppStrings.kUserOpinionCommon,
                    fontSize: 13,
                  ),
                  SizedBox(
                    height: AppDimensions.getDimensions(requiredHeight: 8),
                  ),
                  ExpandedCustomTextFormFiled(
                    height: AppDimensions.getDimensions(requiredHeight: 119),
                    hintText: AppStrings.kExampleCommon,
                  ),
                  SizedBox(
                    height: AppDimensions.getDimensions(requiredHeight: 50),
                  ),
                  MainButtonRed(
                    buttonName: AppStrings.kSentOpinionCommon,
                    onPressed: () {
                      Navigator.pushNamed(context, RoutesManager.addOpinionDoneTeacher);
                    },
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
