import 'package:assiut_project/core/app_constants/app_colors.dart';
import 'package:assiut_project/core/app_dimensions.dart';
import 'package:flutter/material.dart';

class MainHintTextMainScreen extends StatelessWidget {
  final String? myText1;
  final String? myText2;
  final String? myText3;
  final String? myText4;
  final String? myText5;
  final Color? color;

  const MainHintTextMainScreen(
      {Key? key, this.color, this.myText1, this.myText2, this.myText3, this.myText4, this.myText5})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: 6, top: 10),
          child: Text(
            myText1!,
            style: TextStyle(
                fontFamily: 'Almarai',
                color: color ?? AppColors.kSignInMainHintText,
                fontWeight: FontWeight.w400,
                fontSize: AppDimensions.defaultSize * 14),
          ),
        ),
        Text(
          myText2!,
          style: TextStyle(
              fontFamily: 'Almarai',
              color: color ?? AppColors.kSignInMainHintText,
              fontWeight: FontWeight.w400,
              fontSize: AppDimensions.defaultSize * 14),
        ),
        Text(
          myText3!,
          style: TextStyle(
              fontFamily: 'Almarai',
              color: color ?? AppColors.kSignInMainHintText,
              fontWeight: FontWeight.w400,
              fontSize: AppDimensions.defaultSize * 14),
        ),
        Text(
          myText4!,
          style: TextStyle(
              fontFamily: 'Almarai',
              color: color ?? AppColors.kSignInMainHintText,
              fontWeight: FontWeight.w400,
              fontSize: AppDimensions.defaultSize * 14),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 6),
          child: Text(
            myText5!,
            style: TextStyle(
                fontFamily: 'Almarai',
                color: color ?? AppColors.kSignInMainHintText,
                fontWeight: FontWeight.w400,
                fontSize: AppDimensions.defaultSize * 14),
          ),
        ),
      ],
    );
  }
}
