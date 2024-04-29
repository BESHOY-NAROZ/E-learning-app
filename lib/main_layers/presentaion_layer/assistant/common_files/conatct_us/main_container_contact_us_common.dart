import 'package:assiut_project/core/app_constants/app_colors.dart';
import 'package:assiut_project/core/app_dimensions.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_text_grey.dart';
import 'package:flutter/material.dart';

class MainContainerContactUSCommon extends StatelessWidget {
  final String? imagePath;
  final String? myTitle;
  final bool? flip;

  const MainContainerContactUSCommon({
    super.key,
    this.imagePath,
    this.myTitle,
    this.flip,
  });

  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context: context, designHeight: 778, designWidth: 360);
    return Container(
      height: AppDimensions.getDimensions(requiredHeight: 45),
      width: AppDimensions.getDimensions(requiredWidth: 320),
      decoration:
          BoxDecoration(color: AppColors.kContainerCommon, borderRadius: BorderRadius.circular(10)),
      child: Row(children: [
        SizedBox(
          width: AppDimensions.getDimensions(
            requiredWidth: 15,
          ),
        ),
        SizedBox(
          height: AppDimensions.getDimensions(requiredHeight: 24),
          width: AppDimensions.getDimensions(
            requiredWidth: 24,
          ),
          child: Transform.flip(
            flipX: flip ?? false,
            child: Image.asset(
              imagePath!,
              fit: BoxFit.fill,
            ),
          ),
        ),
        SizedBox(
          width: AppDimensions.getDimensions(
            requiredWidth: 10,
          ),
        ),
        MainTextGrey(
          myText: myTitle,
          fontSize: AppDimensions.defaultSize * 12,
        )
      ]),
    );
  }
}
