import 'package:assiut_project/core/app_constants/app_colors.dart';
import 'package:assiut_project/core/app_dimensions.dart';
import 'package:flutter/material.dart';

class MainAddSmallButton extends StatelessWidget {
  final String? myText;
  final double? requiredWidth;
  final double? requiredHeight;
  final Color? textColor;
  final void Function()? onPressed;

  const MainAddSmallButton({
    super.key,
    this.myText,
    this.requiredWidth,
    this.onPressed,
    this.requiredHeight,
    this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context: context, designHeight: 778, designWidth: 360);

    return Container(
        width: AppDimensions.getDimensions(requiredWidth: requiredWidth ?? 98),
        height: AppDimensions.getDimensions(requiredHeight: requiredHeight ?? 45),
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
              Icon(
                Icons.add_circle_outlined,
                size: AppDimensions.getDimensions(requiredHeight: 18),
                color: AppColors.kSmallButtonTextMainScreenHome,
              ),
              SizedBox(
                width: AppDimensions.getDimensions(requiredWidth: 3),
              ),
              Text(
                myText!,
                style: TextStyle(
                    fontFamily: 'Almarai',
                    color: textColor ?? AppColors.kSmallButtonTextMainScreenHome,
                    fontWeight: FontWeight.w700,
                    fontSize: AppDimensions.defaultSize * 10),
              ),
            ],
          ),
        ));
  }
}
