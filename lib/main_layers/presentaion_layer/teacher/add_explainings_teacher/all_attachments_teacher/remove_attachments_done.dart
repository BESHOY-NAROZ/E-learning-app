import 'package:assiut_project/core/app_constants/app_assets.dart';
import 'package:assiut_project/core/app_constants/app_colors.dart';
import 'package:assiut_project/core/app_constants/app_strings.dart';
import 'package:assiut_project/core/app_dimensions.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/close_sign.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_button_red.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_text_blue.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class RemoveAttachmentsDoneTeacher extends StatelessWidget {
  const RemoveAttachmentsDoneTeacher({Key? key}) : super(key: key);

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
              myText: AppStrings.sendCanceledAttached,
            ),
            SizedBox(height: AppDimensions.getDimensions(requiredHeight: 18)),
            Text(
              AppStrings.sendCanceledHintAttached,
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
              buttonName: AppStrings.sendCanceledButtonAttached,
              onPressed: () {
                Navigator.pop(
                  context,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
