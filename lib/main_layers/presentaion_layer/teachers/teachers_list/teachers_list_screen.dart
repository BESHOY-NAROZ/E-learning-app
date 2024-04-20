import 'package:assiut_project/core/app_constants/app_assets.dart';
import 'package:assiut_project/core/app_constants/app_colors.dart';
import 'package:assiut_project/core/app_constants/app_strings.dart';
import 'package:assiut_project/core/app_dimensions.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_text_black.dart';
import 'package:flutter/material.dart';

import 'remove_teacher/remove_teacher_bottom_sheet.dart';

class TeachersList extends StatelessWidget {
  const TeachersList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context: context, designHeight: 778, designWidth: 360);
    return Container(
      padding: EdgeInsets.zero,
      height: AppDimensions.getDimensions(requiredHeight: 57),
      width: AppDimensions.getDimensions(requiredWidth: 320),
      decoration: BoxDecoration(
          color: AppColors.kSentExamsContainerGroups,
          borderRadius: BorderRadius.circular(8)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          RemoveTeacherBottomSheet(),
          SizedBox(
            width: AppDimensions.getDimensions(requiredWidth: 100),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(
                    right: AppDimensions.getDimensions(requiredWidth: 9)),
                child: const MainTextBlack(
                  myText: AppStrings.kTeacherNameTeachers,
                  fontSize: 16,
                ),
              ),
              SizedBox(
                height: AppDimensions.getDimensions(requiredHeight: 4),
              ),
              Padding(
                padding: EdgeInsets.only(
                    right: AppDimensions.getDimensions(requiredWidth: 12)),
                child: const Text(
                  AppStrings.kTeacherSubjectsTeachers,
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                      color: AppColors.kSentGreyTextGroups),
                ),
              ),
            ],
          ),
          SizedBox(
            width: AppDimensions.getDimensions(requiredWidth: 20),
          ),
          Container(
            margin: EdgeInsets.only(
                left: AppDimensions.getDimensions(requiredWidth: 17),
                right: AppDimensions.getDimensions(requiredWidth: 13)),
            width: AppDimensions.getDimensions(
              requiredWidth: 46.33,
            ),
            height: AppDimensions.getDimensions(
              requiredHeight: 46.33,
            ),
            decoration: BoxDecoration(
                color: AppColors.kAppBarPhotoMainScreenHome,
                shape: BoxShape.circle,
                border: Border.all(
                    color: AppColors.kAppBarBorderMainScreenHome, width: 3)),
          ),
        ],
      ),
    );
  }
}


