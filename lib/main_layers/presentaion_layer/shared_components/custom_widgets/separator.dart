import 'package:assiut_project/core/app_constants/app_colors.dart';
import 'package:assiut_project/core/app_dimensions.dart';
import 'package:flutter/material.dart';

class Separator extends StatelessWidget {
  final double? designHeight;
  final double? designWidth;
  const Separator({Key? key, this.designHeight, this.designWidth}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context: context, designHeight: 778, designWidth: 360);
    return Padding(
      padding: EdgeInsets.only(
        left: AppDimensions.getDimensions(
          requiredWidth: 16,
        ),
        right: AppDimensions.getDimensions(requiredWidth: 16),
      ),
      child: Container(
        width: AppDimensions.getDimensions(
          requiredWidth: designWidth ?? 328,
        ),
        height: AppDimensions.getDimensions(requiredHeight: designHeight ?? 3),
        color: AppColors.kSplitterMainScreenHome,
      ),
    );
  }
}
