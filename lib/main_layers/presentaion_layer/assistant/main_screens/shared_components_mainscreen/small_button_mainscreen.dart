import 'package:assiut_project/core/app_constants/app_colors.dart';
import 'package:assiut_project/core/app_dimensions.dart';
import 'package:flutter/material.dart';

class SmallButtonMainScreen extends StatelessWidget {
  final String? myText;
  final void Function()? onPressed;

  const SmallButtonMainScreen({
    super.key,
    this.myText,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context: context, designHeight: 1006, designWidth: 360);

    return Container(
        width: AppDimensions.getDimensions(requiredWidth: 61.43),
        height: AppDimensions.getDimensions(requiredHeight: 24),
        margin: EdgeInsets.only(
          left: AppDimensions.getDimensions(requiredWidth: 20),
        ),
        padding: const EdgeInsets.all(0),
        decoration: BoxDecoration(
          color: AppColors.kSmallButtonMainScreenHome,
          borderRadius: BorderRadius.circular(20),
        ),
        child: IconButton(
          onPressed: onPressed,
          padding: const EdgeInsets.all(0),
          icon: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Icon(
                Icons.arrow_left_outlined,
                color: AppColors.kSmallButtonTextMainScreenHome,
              ),
              Text(
                myText!,
                style: TextStyle(
                    fontFamily: 'Almarai',
                    color: AppColors.kSmallButtonTextMainScreenHome,
                    fontWeight: FontWeight.w700,
                    fontSize: AppDimensions.defaultSize * 10),
              ),
            ],
          ),
        ));
  }
}
