import 'package:assiut_project/core/app_constants/app_colors.dart';
import 'package:assiut_project/core/app_constants/app_strings.dart';
import 'package:assiut_project/core/app_dimensions.dart';
import 'package:flutter/material.dart';

import 'small_button_mainscreen.dart';

class MoreRowMainScreen extends StatelessWidget {
  final String ? vectorIcon;
  final String ? title;
  const MoreRowMainScreen({
    super.key, this.vectorIcon, this.title,
  });

  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context: context, designHeight: 1006, designWidth: 360);

    return Row(
      mainAxisAlignment: MainAxisAlignment.end,

      children: [
        const SmallButtonMainScreen(
          myText: AppStrings.kSmallButtonMainScreenHome,
        ),
        const Spacer(),
         Text(title!,
          style: const TextStyle(
              fontFamily: 'Almarai',
              color: AppColors.kHintTextMainScreenHome,
              fontWeight: FontWeight.w700,
              fontSize: 16),
        ),
        SizedBox(
          width: AppDimensions.getDimensions(requiredWidth: 3.42),
        ),
        SizedBox(
          width: AppDimensions.getDimensions(requiredWidth: 23.3),
          height: AppDimensions.getDimensions(requiredHeight: 19.3),
          child: Image.asset(vectorIcon!),
        ),
      ],
    );
  }
}
