import 'package:assiut_project/core/app_constants/app_assets.dart';
import 'package:assiut_project/core/app_constants/app_colors.dart';
import 'package:assiut_project/core/app_constants/app_strings.dart';
import 'package:assiut_project/core/app_dimensions.dart';
import 'package:flutter/material.dart';

class BottomListMainScreen extends StatelessWidget {
  const BottomListMainScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context: context, designHeight: 778, designWidth: 360);
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      itemCount: 4,
      scrollDirection: Axis.vertical,
      itemBuilder: (context, index) {
        return Center(
          child: Container(
            margin: EdgeInsets.only(
                left: AppDimensions.getDimensions(requiredWidth: 19),
                bottom: AppDimensions.getDimensions(requiredHeight: 12)),
            alignment: Alignment.center,
            width: AppDimensions.getDimensions(
              requiredWidth: 309,
            ),
            height: AppDimensions.getDimensions(
              requiredHeight: 112,
            ),
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: AppColors.kBottomContainerMainScreenHome),
            child: Padding(
              padding: EdgeInsets.only(
                left: AppDimensions.getDimensions(requiredWidth: 13),
                right: AppDimensions.getDimensions(requiredWidth: 11),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox(
                        height: AppDimensions.getDimensions(requiredHeight: 30),
                        width: AppDimensions.getDimensions(requiredWidth: 90),
                        child: Stack(
                          alignment: Alignment.centerLeft,
                          children: [
                            Positioned(
                              right: AppDimensions.getDimensions(
                                requiredHeight: 0,
                              ),
                              child: Container(
                                margin: EdgeInsets.only(
                                    left: AppDimensions.getDimensions(requiredWidth: 17),
                                    right: AppDimensions.getDimensions(requiredWidth: 13)),
                                width: AppDimensions.getDimensions(
                                  requiredWidth: 30,
                                ),
                                height: AppDimensions.getDimensions(
                                  requiredHeight: 30,
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
                                requiredHeight: 20,
                              ),
                              child: Container(
                                margin: EdgeInsets.only(
                                    left: AppDimensions.getDimensions(requiredWidth: 17),
                                    right: AppDimensions.getDimensions(requiredWidth: 13)),
                                width: AppDimensions.getDimensions(
                                  requiredWidth: 30,
                                ),
                                height: AppDimensions.getDimensions(
                                  requiredHeight: 30,
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
                                requiredHeight: 40,
                              ),
                              child: Container(
                                margin: EdgeInsets.only(
                                    left: AppDimensions.getDimensions(requiredWidth: 17),
                                    right: AppDimensions.getDimensions(requiredWidth: 13)),
                                width: AppDimensions.getDimensions(
                                  requiredWidth: 30,
                                ),
                                height: AppDimensions.getDimensions(
                                  requiredHeight: 30,
                                ),
                                decoration: BoxDecoration(
                                    color: AppColors.kBottomBottomListUsersMainScreenHome,
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                        color: AppColors.kAppBarBorderMainScreenHome, width: 2)),
                                child: Center(
                                    child: Text(
                                  AppStrings.kBottomListNumberOfUsersHomeMainScreenHome,
                                  style: TextStyle(
                                      color: AppColors.kBottomAppBarMainScreenHome,
                                      fontSize: AppDimensions.defaultSize * 12),
                                )),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Spacer(),
                      Text(
                        AppStrings.kBottomListGroupNumberHomeMainScreenHome,
                        style: TextStyle(
                            fontFamily: 'Almarai',
                            color: AppColors.kSmallListFirstTextMainScreenHome,
                            fontWeight: FontWeight.w700,
                            fontSize: AppDimensions.defaultSize * 16),
                      ),
                      SizedBox(
                        width: AppDimensions.getDimensions(requiredWidth: 4),
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
                  Text(
                    AppStrings.kBottomListSecondTextHomeMainScreenHome,
                    style: TextStyle(
                        fontFamily: 'Almarai',
                        color: AppColors.kBottomBottomListHintMainScreenHome,
                        fontWeight: FontWeight.w400,
                        fontSize: AppDimensions.defaultSize * 14),
                  ),
                  Text(
                    AppStrings.kBottomListThirdTextHomeMainScreenHome,
                    style: TextStyle(
                        fontFamily: 'Almarai',
                        color: AppColors.kBottomBottomListHintMainScreenHome,
                        fontWeight: FontWeight.w400,
                        fontSize: AppDimensions.defaultSize * 14),
                  ),
                  SizedBox(
                    height: AppDimensions.getDimensions(requiredHeight: 6),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        AppStrings.kBottomListFirstTeacherHomeMainScreenHome,
                        style: TextStyle(
                            fontFamily: 'Almarai',
                            color: AppColors.kBottomBottomListHintMainScreenHome,
                            fontWeight: FontWeight.w700,
                            fontSize: AppDimensions.defaultSize * 12),
                      ),
                      // SizedBox(
                      //   width: AppDimensions.getDimensions(requiredWidth: 3.42),
                      // ),
                      SizedBox(
                        width: AppDimensions.getDimensions(requiredWidth: 23.3),
                        height: AppDimensions.getDimensions(requiredHeight: 19.3),
                        child: Image.asset(AppAssets.kVector2HomeScreen),
                      ),
                      SizedBox(
                        width: AppDimensions.getDimensions(requiredWidth: 31),
                      ),
                      Text(
                        AppStrings.kBottomListSecondTeacherHomeMainScreenHome,
                        style: TextStyle(
                            fontFamily: 'Almarai',
                            color: AppColors.kBottomBottomListHintMainScreenHome,
                            fontWeight: FontWeight.w700,
                            fontSize: AppDimensions.defaultSize * 12),
                      ),
                      // SizedBox(
                      //   width: AppDimensions.getDimensions(requiredWidth: 3.42),
                      // ),
                      SizedBox(
                        width: AppDimensions.getDimensions(requiredWidth: 23.3),
                        height: AppDimensions.getDimensions(requiredHeight: 19.3),
                        child: Image.asset(AppAssets.kVector2HomeScreen),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
