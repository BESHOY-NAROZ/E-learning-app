import 'package:assiut_project/core/app_constants/app_colors.dart';
import 'package:assiut_project/core/app_constants/app_strings.dart';
import 'package:assiut_project/core/app_dimensions.dart';
import 'package:flutter/material.dart';

import 'small_button_mainscreen.dart';

class MoreRowMainScreen extends StatelessWidget {
  final String? vectorIcon;
  final String? title;
  final void Function()? onTap;
  const MoreRowMainScreen({
    super.key,
    this.vectorIcon,
    this.title,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context: context, designHeight: 778, designWidth: 360);

    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        SmallButtonMainScreen(
          myText: AppStrings.kSmallButtonMainScreenHome,
          onPressed: onTap,
        ),
        const Spacer(),
        Text(
          title!,
          style: TextStyle(
              fontFamily: 'Almarai',
              color: AppColors.kHintTextMainScreenHome,
              fontWeight: FontWeight.w700,
              fontSize: AppDimensions.defaultSize * 16),
        ),
        SizedBox(
          width: AppDimensions.getDimensions(requiredWidth: 3.42),
        ),
        SizedBox(
          child: Image.asset(
            vectorIcon!,
            height: AppDimensions.getDimensions(requiredHeight: 20),
            width: AppDimensions.getDimensions(requiredHeight: 20),
            fit: BoxFit.fill,
          ),
        ),
      ],
    );
  }
}
