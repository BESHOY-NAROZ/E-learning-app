import 'package:assiut_project/core/app_constants/app_colors.dart';
import 'package:assiut_project/core/app_dimensions.dart';
import 'package:flutter/material.dart';

class CloseSign extends StatelessWidget {
  const CloseSign({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context: context, designHeight: 778, designWidth: 360);
    return Padding(
      padding: EdgeInsets.only(
        top: AppDimensions.getDimensions(requiredHeight: 45),
        left: AppDimensions.getDimensions(requiredWidth: 300),
      ),
      child: const Icon(Icons.close_rounded,
        size: 30,
        weight: 100
        ,color: AppColors.kResetPasswordDone,
      ),
    );
  }
}
