import 'package:assiut_project/core/app_constants/app_colors.dart';
import 'package:assiut_project/core/app_dimensions.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_text_grey.dart';
import 'package:flutter/material.dart';

class TeacherHomeWorking extends StatelessWidget {
  const TeacherHomeWorking({
    super.key,
    required this.myText,
    required this.myIcon,
  });

  final String myText;
  final String myIcon;

  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context: context, designHeight: 778, designWidth: 360);

    return Container(
      height: AppDimensions.getDimensions(
        requiredHeight: 99,
      ),
      width: AppDimensions.getDimensions(
        requiredHeight: 91,
      ),
      padding: EdgeInsets.symmetric(horizontal: AppDimensions.getDimensions(requiredWidth: 5)),
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(8), color: AppColors.kMainGeryFA),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
              height: AppDimensions.getDimensions(
                requiredHeight: 30,
              ),
              width: AppDimensions.getDimensions(
                requiredHeight: 30,
              ),
              child: Image.asset(myIcon)),
          SizedBox(
            height: AppDimensions.getDimensions(
              requiredHeight: 6,
            ),
          ),
          MainTextGrey(
            myText: myText,
            fontSize: 12,
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
