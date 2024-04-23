import 'package:assiut_project/core/app_constants/app_assets.dart';
import 'package:assiut_project/core/app_constants/app_colors.dart';
import 'package:assiut_project/core/app_constants/app_strings.dart';
import 'package:assiut_project/core/app_dimensions.dart';
import 'package:flutter/material.dart';

class StudentsGroupsListExams extends StatelessWidget {
  const StudentsGroupsListExams({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context: context, designHeight: 778, designWidth: 360);
    return Container(
      width: AppDimensions.getDimensions(
        requiredWidth: 320,
      ),
      height: AppDimensions.getDimensions(
        requiredHeight: 143,
      ),
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8), color: AppColors.kBottomContainerMainScreenHome),
      child: Padding(
        padding: EdgeInsets.only(
          left: AppDimensions.getDimensions(requiredWidth: 13),
          right: AppDimensions.getDimensions(requiredWidth: 11),
          top: AppDimensions.getDimensions(requiredHeight: 8),
          bottom: AppDimensions.getDimensions(requiredHeight: 5),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Checkbox(
                value: true,
                side: BorderSide(
                  color: AppColors.kMainBlueAA,
                ),
                activeColor: AppColors.kMainBlueAA,
                onChanged: (value) {},
              ),
            ),
            Spacer(),
            Padding(
              padding: EdgeInsets.only(right: AppDimensions.getDimensions(requiredWidth: 9)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const Text(
                        AppStrings.kBottomListGroupNumberHomeMainScreenHome,
                        style: TextStyle(
                            fontFamily: 'Almarai',
                            color: AppColors.kSmallListFirstTextMainScreenHome,
                            fontWeight: FontWeight.w700,
                            fontSize: 16),
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
                            fontSize: 16),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: AppDimensions.getDimensions(requiredWidth: 6)),
                    child: const Text(
                      AppStrings.kBottomListSecondTextHomeMainScreenHome,
                      style: TextStyle(
                          fontFamily: 'Almarai',
                          color: AppColors.kBottomBottomListHintMainScreenHome,
                          fontWeight: FontWeight.w400,
                          fontSize: 14),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: AppDimensions.getDimensions(requiredWidth: 6)),
                    child: const Text(
                      AppStrings.kBottomListThirdTextHomeMainScreenHome,
                      style: TextStyle(
                          fontFamily: 'Almarai',
                          color: AppColors.kBottomBottomListHintMainScreenHome,
                          fontWeight: FontWeight.w400,
                          fontSize: 14),
                    ),
                  ),
                  SizedBox(
                    height: AppDimensions.getDimensions(requiredHeight: 10),
                  ),
                  SizedBox(
                    height: AppDimensions.getDimensions(requiredHeight: 50),
                    width: AppDimensions.getDimensions(requiredWidth: 150),
                    child: Stack(
                      children: [
                        Positioned(
                          right: AppDimensions.getDimensions(requiredWidth: -10),
                          child: Container(
                            margin: EdgeInsets.only(
                                left: AppDimensions.getDimensions(requiredWidth: 17),
                                right: AppDimensions.getDimensions(requiredWidth: 13)),
                            width: AppDimensions.getDimensions(
                              requiredWidth: 40,
                            ),
                            height: AppDimensions.getDimensions(
                              requiredHeight: 40,
                            ),
                            decoration: BoxDecoration(
                                color: AppColors.kAppBarPhotoMainScreenHome,
                                shape: BoxShape.circle,
                                border: Border.all(
                                    color: AppColors.kAppBarBorderMainScreenHome, width: 2)),
                            child: Image.asset(AppAssets.kStudentGroupsScreen),
                          ),
                        ),
                        Positioned(
                          right: AppDimensions.getDimensions(requiredWidth: 15),
                          child: Container(
                            margin: EdgeInsets.only(
                                left: AppDimensions.getDimensions(requiredWidth: 17),
                                right: AppDimensions.getDimensions(requiredWidth: 13)),
                            width: AppDimensions.getDimensions(
                              requiredWidth: 40,
                            ),
                            height: AppDimensions.getDimensions(
                              requiredHeight: 40,
                            ),
                            decoration: BoxDecoration(
                                color: AppColors.kAppBarPhotoMainScreenHome,
                                shape: BoxShape.circle,
                                border: Border.all(
                                    color: AppColors.kAppBarBorderMainScreenHome, width: 2)),
                            child: Image.asset(AppAssets.kStudentGroupsScreen),
                          ),
                        ),
                        Positioned(
                          right: AppDimensions.getDimensions(requiredWidth: 40),
                          child: Container(
                            margin: EdgeInsets.only(
                                left: AppDimensions.getDimensions(requiredWidth: 17),
                                right: AppDimensions.getDimensions(requiredWidth: 13)),
                            width: AppDimensions.getDimensions(
                              requiredWidth: 40,
                            ),
                            height: AppDimensions.getDimensions(
                              requiredHeight: 40,
                            ),
                            decoration: BoxDecoration(
                                color: AppColors.kAppBarPhotoMainScreenHome,
                                shape: BoxShape.circle,
                                border: Border.all(
                                    color: AppColors.kAppBarBorderMainScreenHome, width: 2)),
                            child: Image.asset(AppAssets.kStudentGroupsScreen),
                          ),
                        ),
                        Positioned(
                          right: AppDimensions.getDimensions(requiredWidth: 65),
                          child: Container(
                            margin: EdgeInsets.only(
                                left: AppDimensions.getDimensions(requiredWidth: 17),
                                right: AppDimensions.getDimensions(requiredWidth: 13)),
                            width: AppDimensions.getDimensions(
                              requiredWidth: 40,
                            ),
                            height: AppDimensions.getDimensions(
                              requiredHeight: 40,
                            ),
                            decoration: BoxDecoration(
                                color: AppColors.kAppBarPhotoMainScreenHome,
                                shape: BoxShape.circle,
                                border: Border.all(
                                    color: AppColors.kAppBarBorderMainScreenHome, width: 2)),
                            child: Image.asset(AppAssets.kStudentGroupsScreen),
                          ),
                        ),
                        Positioned(
                          right: AppDimensions.getDimensions(requiredWidth: 90),
                          child: Container(
                            margin: EdgeInsets.only(
                                left: AppDimensions.getDimensions(requiredWidth: 17),
                                right: AppDimensions.getDimensions(requiredWidth: 13)),
                            width: AppDimensions.getDimensions(
                              requiredWidth: 40,
                            ),
                            height: AppDimensions.getDimensions(
                              requiredHeight: 40,
                            ),
                            decoration: BoxDecoration(
                                color: AppColors.kAppBarPhotoMainScreenHome,
                                shape: BoxShape.circle,
                                border: Border.all(
                                    color: AppColors.kAppBarBorderMainScreenHome, width: 2)),
                            child: Image.asset(AppAssets.kStudentGroupsScreen),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
