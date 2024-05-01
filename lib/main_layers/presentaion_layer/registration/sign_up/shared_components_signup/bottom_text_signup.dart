import 'package:assiut_project/core/app_constants/app_colors.dart';
import 'package:assiut_project/core/app_constants/app_strings.dart';
import 'package:assiut_project/core/app_dimensions.dart';
import 'package:assiut_project/core/app_routes.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/custom_widgets/uderlined_text.dart';
import 'package:flutter/material.dart';

class BottomTextSignUp extends StatelessWidget {
  const BottomTextSignUp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
            padding: const EdgeInsets.only(top: 6.0),
            child: InkWell(
              onTap: () {
                Navigator.pushNamed(context, RoutesManager.loginScreen);
              },
              child: CustomUnderLinedText(
                myText: AppStrings.kLoginSignUp,
                fontSize: AppDimensions.defaultSize * 12,
              ),
            )),
        Text(
          AppStrings.kHaveAccountSignUp,
          style: TextStyle(
              fontFamily: 'Almarai',
              color: AppColors.kLoginWithoutAccount,
              fontWeight: FontWeight.w700,
              fontSize: AppDimensions.defaultSize * 12),
        ),
      ],
    );
  }
}
