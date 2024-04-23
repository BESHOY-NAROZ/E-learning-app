import 'package:assiut_project/core/app_constants/app_assets.dart';
import 'package:assiut_project/core/app_constants/app_colors.dart';
import 'package:assiut_project/core/app_constants/app_strings.dart';
import 'package:assiut_project/core/app_dimensions.dart';
import 'package:flutter/material.dart';

class MainButtonMainScreenMenu extends StatelessWidget
{
  final String ? myTitle;
  final String ? myIcon;
  const MainButtonMainScreenMenu({
    super.key, this.myTitle, this.myIcon,
  });

  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context: context, designHeight: 825, designWidth: 360);
    return Container(
      height: AppDimensions.getDimensions(requiredHeight: 45),
      width: AppDimensions.getDimensions(requiredWidth: 320),
      padding: EdgeInsets.only(right: AppDimensions.getDimensions
        (requiredWidth: 10)),
      decoration:  BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColors.kContainerMainScreenMenu
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
           Text(
            myTitle!,
            textAlign: TextAlign.end,
            style: const TextStyle(
                fontFamily: 'Almarai',
                color: AppColors.kHintTextMainScreenHome,
                fontWeight: FontWeight.w700,
                fontSize: 12),
          ),
          SizedBox(
            width:
            AppDimensions.getDimensions(requiredWidth: 7),
          ),
          SizedBox(
            width: AppDimensions.getDimensions(
                requiredWidth: 30),
            height: AppDimensions.getDimensions(
                requiredHeight: 30),
            child: Image.asset(myIcon!,
            color: AppColors.kHintTextMainScreenHome,
            ),),

        ],
      ),
    );
  }
}