import 'package:assiut_project/core/app_constants/app_colors.dart';
import 'package:assiut_project/core/app_constants/app_strings.dart';
import 'package:assiut_project/core/app_dimensions.dart';
import 'package:assiut_project/core/app_routes.dart';
import 'package:flutter/material.dart';

class AppBarMainScreenTeacher extends StatelessWidget {
  final double? designHeight;
  final double? designWidth;
  const AppBarMainScreenTeacher({
    Key? key,
    this.designHeight,
    this.designWidth,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context: context, designHeight: designHeight, designWidth: designWidth);
    return SafeArea(
      child: SizedBox(
          width: AppDimensions.getDimensions(requiredWidth: 360),
          height: AppDimensions.getDimensions(requiredHeight: 100),
          child: Container(
            color: AppColors.kAppBarLogin,
            child: Padding(
              padding: EdgeInsets.only(
                top: AppDimensions.getDimensions(requiredHeight: 29),
                right: AppDimensions.getDimensions(requiredHeight: 31),
                bottom: AppDimensions.getDimensions(requiredHeight: 22),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(
                    width: AppDimensions.getDimensions(requiredWidth: 20),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, RoutesManager.paymentTeacher);
                    },
                    child: SizedBox(
                      width: AppDimensions.getDimensions(requiredWidth: 50),
                      height: double.infinity,
                      child: Stack(
                        children: [
                          Icon(
                            Icons.shopping_cart_rounded,
                            color: AppColors.kMainTextWhite,
                            size: AppDimensions.getDimensions(requiredHeight: 45),
                          ),
                          Positioned(
                            left: AppDimensions.getDimensions(requiredWidth: 13),
                            top: AppDimensions.getDimensions(requiredHeight: 18),
                            child: Container(
                              width: AppDimensions.getDimensions(requiredWidth: 30),
                              height: AppDimensions.getDimensions(requiredHeight: 30),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: AppColors.kAppBarLogin,
                              ),
                              child: Container(
                                width: AppDimensions.getDimensions(requiredWidth: 25),
                                height: AppDimensions.getDimensions(requiredHeight: 25),
                                padding: EdgeInsets.zero,
                                margin: EdgeInsets.zero,
                                decoration: const BoxDecoration(
                                    shape: BoxShape.circle, color: AppColors.kMainTextRed),
                                child: const Text('1',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        color: AppColors.kMainTextWhite)),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  const Spacer(),
                  const Text(
                    AppStrings.kAppBarTitleMainScreenHome,
                    style: TextStyle(
                        fontFamily: 'Almarai',
                        color: AppColors.kAppBarTitleMainScreenHome,
                        fontWeight: FontWeight.w700,
                        fontSize: 20),
                  ),
                  SizedBox(
                    width: AppDimensions.getDimensions(requiredWidth: 12),
                  ),
                  Container(
                    width: AppDimensions.getDimensions(
                      requiredWidth: 46.33,
                    ),
                    height: AppDimensions.getDimensions(
                      requiredHeight: 46.33,
                    ),
                    decoration: BoxDecoration(
                        color: AppColors.kAppBarPhotoMainScreenHome,
                        shape: BoxShape.circle,
                        border: Border.all(color: AppColors.kAppBarBorderMainScreenHome, width: 3)),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
