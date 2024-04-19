import 'package:assiut_project/core/app_constants/app_assets.dart';
import 'package:assiut_project/core/app_constants/app_colors.dart';
import 'package:assiut_project/core/app_dimensions.dart';
import 'package:flutter/material.dart';

class ChangePhotoSignUp extends StatelessWidget {
  const ChangePhotoSignUp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context: context, designHeight: 1247, designWidth: 360);
    return Center(
      child: Stack(
        children: [
          Container(
            height: AppDimensions.getDimensions(requiredHeight: 136),
            width: AppDimensions.getDimensions(requiredWidth: 136),
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                    color: AppColors.kBorderProfileEditing, width: 3)),
            child: Image.asset(AppAssets.kStudentGroupsScreen),
          ),
          Positioned(
            top: AppDimensions.getDimensions(requiredHeight: 100),
            left: AppDimensions.getDimensions(requiredWidth: 80),
            child: Container(
              height: AppDimensions.getDimensions(requiredHeight: 35),
              width: AppDimensions.getDimensions(requiredWidth: 35),
              decoration: const BoxDecoration(
                color: AppColors.kChangeProfileEditing,
                shape: BoxShape.circle,
              ),
              child: const Icon(Icons.edit),
            ),
          ),
        ],
      ),
    );
  }
}
