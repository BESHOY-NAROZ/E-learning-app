import 'package:assiut_project/core/app_constants/app_colors.dart';
import 'package:assiut_project/core/app_constants/app_strings.dart';
import 'package:assiut_project/core/app_dimensions.dart';
import 'package:flutter/material.dart';

class AppBarMainScreen extends StatelessWidget {
  final double ? designHeight;
  final double ? designWidth;
  const AppBarMainScreen({
    Key? key, this.designHeight, this.designWidth,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context: context, designHeight: designHeight, designWidth: designWidth);
    return SafeArea(
      child: SizedBox(
          width: AppDimensions.getDimensions(requiredWidth: 360),
             height:  AppDimensions.getDimensions(requiredHeight: 100),
          child: Container(
            color: AppColors.kAppBarLogin,
            child: Padding(
               padding:  EdgeInsets.only(
                 top: AppDimensions.getDimensions(requiredHeight: 29),
                 right: AppDimensions.getDimensions(requiredHeight: 31),
                 bottom: AppDimensions.getDimensions(requiredHeight: 22),
      
               ),
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.end,
                 children: [
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
                         border: Border.all(
                             color: AppColors.kAppBarBorderMainScreenHome,
                             width: 3)),
                   ),
                 ],
               ),
             ),
          )),
    );
  }


}
