import 'package:assiut_project/core/app_constants/app_assets.dart';
import 'package:assiut_project/core/app_constants/app_colors.dart';
import 'package:assiut_project/core/app_constants/app_strings.dart';
import 'package:assiut_project/core/app_dimensions.dart';
import 'package:assiut_project/core/app_routes.dart';
import 'package:flutter/material.dart';

import 'remove_student_bottom_sheet.dart';

class EveryStudentInGroupList extends StatelessWidget {
  const EveryStudentInGroupList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context: context, designHeight: 778, designWidth: 360);
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, RoutesManager.studentsProfile);
      },
      child: Container(
          width: AppDimensions.getDimensions(
            requiredWidth: 320,
          ),
          height: AppDimensions.getDimensions(
            requiredHeight: 85,
          ),
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: AppColors.kBottomContainerMainScreenHome),
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: AppDimensions.getDimensions(
                  requiredWidth: 18,
                ),
                vertical: AppDimensions.getDimensions(requiredHeight: 18)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const RemoveStudentBottomSheet(),
                Spacer(),
                Column(
                  children: [
                    Text(
                      AppStrings.kStudentNameGroups,
                      style: TextStyle(
                          fontFamily: 'Almarai',
                          color: AppColors.kSmallListFirstTextMainScreenHome,
                          fontWeight: FontWeight.w700,
                          fontSize: AppDimensions.defaultSize * 15),
                    ),
                    Spacer(),
                    Text(
                      AppStrings.kStudentLevelGroups,
                      style: TextStyle(
                          fontFamily: 'Almarai',
                          color: AppColors.kSmallListFirstTextMainScreenHome,
                          fontWeight: FontWeight.w400,
                          fontSize: AppDimensions.defaultSize * 12),
                    ),
                  ],
                ),
                SizedBox(
                  width: AppDimensions.getDimensions(requiredWidth: 12),
                ),
                Container(
                  width: AppDimensions.getDimensions(requiredWidth: 60),
                  height: AppDimensions.getDimensions(requiredHeight: 60),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: Image.asset(AppAssets.kStudentGroupsScreen),
                )
              ],
            ),
          )),
    );
  }
}
