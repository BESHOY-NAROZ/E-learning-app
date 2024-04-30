import 'package:assiut_project/core/app_constants/app_colors.dart';
import 'package:assiut_project/core/app_constants/app_strings.dart';
import 'package:assiut_project/core/app_dimensions.dart';
import 'package:assiut_project/core/app_routes.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/uderlined_text.dart';
import 'package:flutter/material.dart';

class ForgetPasswordBottomView extends StatelessWidget {
  final String? hintText;
  const ForgetPasswordBottomView({Key? key, this.hintText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context: context, designHeight: 778, designWidth: 360);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          hintText!,
          style: TextStyle(
              fontFamily: 'Almarai',
              color: AppColors.kForgetPasswordHintBottomView,
              fontWeight: FontWeight.w400,
              fontSize: AppDimensions.defaultSize * 10),
        ),
        SizedBox(
          height: AppDimensions.getDimensions(requiredHeight: 6),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomUnderLinedText(
              myText: AppStrings.kForgetPasswordLeftBottomView,
              onTap: () {
                Navigator.pushNamed(context, RoutesManager.accountType);
              },
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Container(
                width: AppDimensions.getDimensions(requiredWidth: 2),
                height: AppDimensions.getDimensions(requiredHeight: 22),
                color: AppColors.kLoginCreateAccount,
              ),
            ),
            CustomUnderLinedText(
              myText: AppStrings.kForgetPasswordRightBottomView,
              onTap: () {
                Navigator.pushNamed(context, RoutesManager.loginScreen);
              },
            )
          ],
        )
      ],
    );
  }
}
