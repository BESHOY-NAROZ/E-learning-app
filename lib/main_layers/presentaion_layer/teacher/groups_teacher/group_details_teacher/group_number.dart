import 'package:assiut_project/core/app_constants/app_colors.dart';
import 'package:assiut_project/core/app_constants/app_strings.dart';
import 'package:assiut_project/core/app_dimensions.dart';
import 'package:flutter/material.dart';

class GroupNumberTeacher extends StatelessWidget {
  const GroupNumberTeacher({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context: context, designHeight: 778, designWidth: 360);

    return SizedBox(
      width: AppDimensions.getDimensions(requiredWidth: 320),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            AppStrings.kBottomListGroupNumberHomeMainScreenHome,
            style: TextStyle(
                fontFamily: 'Almarai',
                color: AppColors.kMainBlack,
                fontWeight: FontWeight.w700,
                fontSize: AppDimensions.defaultSize * 20),
          ),
          SizedBox(
            width: AppDimensions.getDimensions(requiredWidth: 4),
          ),
          Text(
            AppStrings.kBottomListFirstTextHomeMainScreenHome,
            style: TextStyle(
                fontFamily: 'Almarai',
                color: AppColors.kMainBlack,
                fontWeight: FontWeight.w700,
                fontSize: AppDimensions.defaultSize * 20),
          ),
        ],
      ),
    );
  }
}
