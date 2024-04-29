import 'package:assiut_project/core/app_constants/app_colors.dart';
import 'package:assiut_project/core/app_dimensions.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_text_black.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_text_grey.dart';
import 'package:flutter/material.dart';

class MainContainerNotifications extends StatelessWidget {
  final String? title;
  final String? time;
  final String? description;

  const MainContainerNotifications({Key? key, this.title, this.time, this.description})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context: context, designHeight: 778, designWidth: 360);
    return Container(
      width: AppDimensions.getDimensions(requiredWidth: 320),
      height: AppDimensions.getDimensions(requiredHeight: 81),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: AppColors.kMainContainerNotificationCommon),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                MainTextGrey(
                  myText: time,
                  color: AppColors.kHintNotificationCommon,
                  fontSize: AppDimensions.defaultSize * 10,
                ),
                Spacer(),
                MainTextBlack(
                  myText: title,
                  fontSize: AppDimensions.defaultSize * 16,
                ),
              ],
            ),
            SizedBox(
              height: AppDimensions.getDimensions(requiredHeight: 5),
            ),
            MainTextGrey(
              myText: description,
              color: AppColors.kHintNotificationCommon,
              fontSize: AppDimensions.defaultSize * 11,
            ),
          ],
        ),
      ),
    );
  }
}
