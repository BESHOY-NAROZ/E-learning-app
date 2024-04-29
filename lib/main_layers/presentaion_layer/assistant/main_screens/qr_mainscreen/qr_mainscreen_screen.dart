import 'package:assiut_project/core/app_constants/app_assets.dart';
import 'package:assiut_project/core/app_constants/app_colors.dart';
import 'package:assiut_project/core/app_constants/app_strings.dart';
import 'package:assiut_project/core/app_dimensions.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/close_sign.dart';
import 'package:flutter/material.dart';

class QRMainScreen extends StatelessWidget {
  const QRMainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context: context, designHeight: 778, designWidth: 360);
    return Scaffold(
      body: SizedBox(
        height: AppDimensions.getDimensions(requiredHeight: 778),
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
            Text(
              AppStrings.kQRMainScreenFinal,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontFamily: 'Almarai',
                  color: AppColors.kResetPasswordDone,
                  fontWeight: FontWeight.w700,
                  fontSize: AppDimensions.defaultSize * 24),
            ),
            SizedBox(
              height: AppDimensions.getDimensions(requiredHeight: 38.66),
            ),
            SizedBox(
                height: AppDimensions.getDimensions(requiredHeight: 253.69),
                width: AppDimensions.getDimensions(requiredWidth: 253.69),
                child: Image.asset(AppAssets.kQRMainScreen))
          ],
        ),
      ),
    );
  }
}
