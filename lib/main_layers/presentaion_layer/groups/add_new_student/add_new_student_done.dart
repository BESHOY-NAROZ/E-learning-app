import 'package:assiut_project/core/app_constants/app_assets.dart';
import 'package:assiut_project/core/app_constants/app_colors.dart';
import 'package:assiut_project/core/app_constants/app_strings.dart';
import 'package:assiut_project/core/app_dimensions.dart';
import 'package:assiut_project/core/app_routes.dart';
import 'package:assiut_project/main_layers/presentaion_layer/groups/shared_components_groups/main_grey_button.dart';
import 'package:assiut_project/main_layers/presentaion_layer/main_screens/shared_components_mainscreen/close_sign_mainscreen.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_button.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_text_blue.dart';
import 'package:flutter/material.dart';

class AddNewStudentDone extends StatelessWidget {
  const AddNewStudentDone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context: context, designHeight: 778, designWidth: 360);
    return Scaffold(
      body: SizedBox(
        width: AppDimensions.getDimensions(requiredWidth: 360),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: AppDimensions.getDimensions(requiredHeight: 38),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: AppDimensions.getDimensions(requiredWidth: 308),
              ),
              child: const CloseSign(),
            ),
            SizedBox(height: AppDimensions.getDimensions(requiredHeight: 112)),
            SizedBox(
                height: AppDimensions.getDimensions(requiredHeight: 154),
                width: AppDimensions.getDimensions(requiredWidth: 154),
                child: Image.asset(AppAssets.kCorrect)),

            const MainTextBlue(
              myText: AppStrings.kRequestSentGroups,
            ),
            SizedBox(height: AppDimensions.getDimensions(requiredHeight: 18)),

            const Text(
              AppStrings.kSpecialRequestSentGroups,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontFamily: 'Almarai',
                  color: AppColors.kSignInMainHintText,
                  fontWeight: FontWeight.w400,
                  fontSize: 14),
            ),
            SizedBox(height: AppDimensions.getDimensions(requiredHeight: 214)),

            CustomMainButton(
              text: AppStrings.kGoToGroupGroups,
              onPressed: () {

              },
            ),
            SizedBox(height: AppDimensions.getDimensions(requiredHeight: 10)),

            MainGreyButton(
              buttonName: AppStrings.kCancelJoinRequestGroups,
              onPressed: () {

              },
            )
          ],
        ),
      ),
    );
  }
}
