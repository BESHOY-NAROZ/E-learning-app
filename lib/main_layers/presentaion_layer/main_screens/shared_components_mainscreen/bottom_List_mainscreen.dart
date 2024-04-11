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
    AppDimensions.init(context: context, designHeight: 1006, designWidth: 360);
    return SizedBox(
      height: AppDimensions.getDimensions(
        requiredHeight: 285,),
      child: ListView.builder(
        padding: EdgeInsets.zero,
        itemCount: 3,
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) {
        return Center(
          child: Container(
            margin: EdgeInsets.only(
                left: AppDimensions.getDimensions(requiredWidth: 19)
            ,bottom: AppDimensions.getDimensions(requiredHeight: 12)
            ),
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
                top: AppDimensions.getDimensions(requiredHeight: 8),
                bottom: AppDimensions.getDimensions(requiredHeight: 5),
              ),
              child: Stack(
                children: [
                  Positioned(
                    top: AppDimensions.getDimensions(requiredWidth: 3),
                    left: AppDimensions.getDimensions(requiredWidth: 0),
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
                              color: AppColors.kAppBarBorderMainScreenHome,
                              width: 2)),
                    ),
                  ),
                  Positioned(
                    top: AppDimensions.getDimensions(requiredWidth: 3),
                    left: AppDimensions.getDimensions(requiredWidth: -10),
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
                              color: AppColors.kAppBarBorderMainScreenHome,
                              width: 2)),
                    ),
                  ),
                  Positioned(
                    top: AppDimensions.getDimensions(requiredWidth: 3),
                    left: AppDimensions.getDimensions(requiredWidth: -20),
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
                          color: AppColors.kBottomBottomListUsersMainScreenHome,
                          shape: BoxShape.circle,
                          border: Border.all(
                              color: AppColors.kAppBarBorderMainScreenHome,
                              width: 2)),
                      child: const Center(
                          child: Text(
                            AppStrings.kBottomListNumberOfUsersHomeMainScreenHome,
                            style:
                            TextStyle(color: AppColors.kBottomAppBarMainScreenHome),
                          )),
                    ),
                  ),
                  Column(
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
                      const Text(
                        AppStrings.kBottomListSecondTextHomeMainScreenHome,
                        style: TextStyle(
                            fontFamily: 'Almarai',
                            color: AppColors.kBottomBottomListHintMainScreenHome,
                            fontWeight: FontWeight.w400,
                            fontSize: 14),
                      ),
                      const Text(
                        AppStrings.kBottomListThirdTextHomeMainScreenHome,
                        style: TextStyle(
                            fontFamily: 'Almarai',
                            color: AppColors.kBottomBottomListHintMainScreenHome,
                            fontWeight: FontWeight.w400,
                            fontSize: 14),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          const Text(
                            AppStrings.kBottomListFirstTeacherHomeMainScreenHome,
                            style: TextStyle(
                                fontFamily: 'Almarai',
                                color:
                                AppColors.kBottomBottomListHintMainScreenHome,
                                fontWeight: FontWeight.w700,
                                fontSize: 12),
                          ),
                          // SizedBox(
                          //   width: AppDimensions.getDimensions(requiredWidth: 3.42),
                          // ),
                          SizedBox(
                            width: AppDimensions.getDimensions(requiredWidth: 23.3),
                            height:
                            AppDimensions.getDimensions(requiredHeight: 19.3),
                            child: Image.asset(AppAssets.kVector2HomeScreen),
                          ),
                          SizedBox(
                            width: AppDimensions.getDimensions(requiredWidth: 31),
                          ),
                          const Text(
                            AppStrings.kBottomListSecondTeacherHomeMainScreenHome,
                            style: TextStyle(
                                fontFamily: 'Almarai',
                                color:
                                AppColors.kBottomBottomListHintMainScreenHome,
                                fontWeight: FontWeight.w700,
                                fontSize: 12),
                          ),
                          // SizedBox(
                          //   width: AppDimensions.getDimensions(requiredWidth: 3.42),
                          // ),
                          SizedBox(
                            width: AppDimensions.getDimensions(requiredWidth: 23.3),
                            height:
                            AppDimensions.getDimensions(requiredHeight: 19.3),
                            child: Image.asset(AppAssets.kVector2HomeScreen),
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },),
    );
  }
}
