import 'package:assiut_project/core/app_constants/app_assets.dart';
import 'package:assiut_project/core/app_constants/app_colors.dart';
import 'package:assiut_project/core/app_constants/app_strings.dart';
import 'package:assiut_project/core/app_dimensions.dart';
import 'package:flutter/material.dart';

class SendExamTeacherList extends StatelessWidget {
  const SendExamTeacherList({Key? key}) : super(key: key);

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
                side: const BorderSide(
                  color: AppColors.kMainBlueAA,
                ),
                activeColor: AppColors.kMainBlueAA,
                onChanged: (value) {},
              ),
            ),
            const Spacer(),
            Padding(
              padding: EdgeInsets.only(right: AppDimensions.getDimensions(requiredWidth: 9)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        AppStrings.kBottomListGroupNumberHomeMainScreenHome,
                        style: TextStyle(
                            fontFamily: 'Almarai',
                            color: AppColors.kSmallListFirstTextMainScreenHome,
                            fontWeight: FontWeight.w700,
                            fontSize: AppDimensions.defaultSize * 16),
                      ),
                      SizedBox(
                        width: AppDimensions.getDimensions(requiredWidth: 8),
                      ),
                      Text(
                        AppStrings.kBottomListFirstTextHomeMainScreenHome,
                        style: TextStyle(
                            fontFamily: 'Almarai',
                            color: AppColors.kSmallListFirstTextMainScreenHome,
                            fontWeight: FontWeight.w700,
                            fontSize: AppDimensions.defaultSize * 16),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: AppDimensions.getDimensions(requiredWidth: 6)),
                    child: Text(
                      AppStrings.kBottomListSecondTextHomeMainScreenHome,
                      style: TextStyle(
                          fontFamily: 'Almarai',
                          color: AppColors.kBottomBottomListHintMainScreenHome,
                          fontWeight: FontWeight.w400,
                          fontSize: AppDimensions.defaultSize * 14),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: AppDimensions.getDimensions(requiredWidth: 6)),
                    child: Text(
                      AppStrings.kBottomListThirdTextHomeMainScreenHome,
                      style: TextStyle(
                          fontFamily: 'Almarai',
                          color: AppColors.kBottomBottomListHintMainScreenHome,
                          fontWeight: FontWeight.w400,
                          fontSize: AppDimensions.defaultSize * 14),
                    ),
                  ),
                  SizedBox(
                    height: AppDimensions.getDimensions(requiredHeight: 10),
                  ),
                  SizedBox(
                    height: AppDimensions.getDimensions(requiredHeight: 50),
                    width: AppDimensions.getDimensions(requiredWidth: 150),
                    child: Stack(
                      alignment: Alignment.centerRight,
                      children: [
                        Positioned(
                          right: AppDimensions.getDimensions(
                            requiredHeight: 0,
                          ),
                          child: Container(
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
                          right: AppDimensions.getDimensions(
                            requiredHeight: 25,
                          ),
                          child: Container(
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
                          right: AppDimensions.getDimensions(
                            requiredHeight: 50,
                          ),
                          child: Container(
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
                          right: AppDimensions.getDimensions(
                            requiredHeight: 75,
                          ),
                          child: Container(
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
                          right: AppDimensions.getDimensions(
                            requiredHeight: 100,
                          ),
                          child: Container(
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
