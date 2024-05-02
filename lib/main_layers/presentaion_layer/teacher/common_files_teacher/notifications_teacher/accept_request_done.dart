import 'package:assiut_project/core/app_constants/app_assets.dart';
import 'package:assiut_project/core/app_constants/app_colors.dart';
import 'package:assiut_project/core/app_constants/app_strings.dart';
import 'package:assiut_project/core/app_dimensions.dart';
import 'package:assiut_project/core/app_routes.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/custom_widgets/close_sign.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/custom_widgets/main_button_red.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/custom_widgets/main_text_blue.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class AcceptRequestDoneTeacher extends StatelessWidget {
  const AcceptRequestDoneTeacher({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context: context, designHeight: 778, designWidth: 360);
    return Scaffold(
      body: SizedBox(
        width: AppDimensions.getDimensions(requiredWidth: 360),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const CloseSign(),
            SizedBox(
              height: AppDimensions.getDimensions(requiredHeight: 112),
            ),
            SizedBox(
              height: AppDimensions.getDimensions(requiredHeight: 154),
              width: AppDimensions.getDimensions(requiredWidth: 154),
              child: Lottie.asset(
                AppAssets.kBlueLike,
              ),
            ),
            const MainTextBlue(
              myText: AppStrings.kAcceptDoneCommon,
            ),
            SizedBox(height: AppDimensions.getDimensions(requiredHeight: 18)),
            Text(
              AppStrings.kAcceptDoneHintCommon,
              textAlign: TextAlign.center,
              textDirection: TextDirection.rtl,
              style: TextStyle(
                  fontFamily: 'Almarai',
                  color: AppColors.kSignInMainHintText,
                  fontWeight: FontWeight.w400,
                  fontSize: AppDimensions.defaultSize * 14),
            ),
            SizedBox(height: AppDimensions.getDimensions(requiredHeight: 230)),
            MainButtonRed(
              buttonName: AppStrings.kAcceptDoneButtonCommon,
              onPressed: () {
                Navigator.pushNamed(context, RoutesManager.groupDetailsTeacher);
              },
            ),
          ],
        ),
      ),
    );
  }
}
