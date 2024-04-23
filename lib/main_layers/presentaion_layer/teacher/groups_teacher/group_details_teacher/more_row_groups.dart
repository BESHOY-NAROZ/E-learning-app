import 'package:assiut_project/core/app_constants/app_assets.dart';
import 'package:assiut_project/core/app_constants/app_colors.dart';
import 'package:assiut_project/core/app_constants/app_strings.dart';
import 'package:assiut_project/core/app_dimensions.dart';
import 'package:assiut_project/core/app_routes.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_add_small_button.dart';
import 'package:flutter/material.dart';

class MoreRowGroupsTeacher extends StatelessWidget {
  const MoreRowGroupsTeacher({
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
          MainAddSmallButton(
            myText: AppStrings.kSmallButtonCreateGroupGroupStudentGroups,
            onPressed: () {
              Navigator.pushNamed(context, RoutesManager.addNewStudentTeacher);
            },
          ),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const Text(
                AppStrings.kBottomListGroupNumberHomeMainScreenHome,
                style: TextStyle(
                    fontFamily: 'Almarai',
                    color: AppColors.kSmallListFirstTextMainScreenHome,
                    fontWeight: FontWeight.w700,
                    fontSize: 20),
              ),
              SizedBox(
                width: AppDimensions.getDimensions(requiredWidth: 8),
              ),
              const Text(
                AppStrings.kBottomListFirstTextHomeMainScreenHome,
                style: TextStyle(
                    fontFamily: 'Almarai',
                    color: AppColors.kSmallListFirstTextMainScreenHome,
                    fontWeight: FontWeight.w700,
                    fontSize: 20),
              ),
            ],
          ),
          SizedBox(
            width: AppDimensions.getDimensions(requiredWidth: 3.42),
          ),
          SizedBox(
            width: AppDimensions.getDimensions(requiredWidth: 23.3),
            height: AppDimensions.getDimensions(requiredHeight: 19.3),
            child: Image.asset(AppAssets.kVector3HomeScreen),
          ),
        ],
      ),
    );
  }
}
