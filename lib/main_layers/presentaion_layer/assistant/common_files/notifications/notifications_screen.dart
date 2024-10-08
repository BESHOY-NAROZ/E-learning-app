import 'package:assiut_project/core/app_constants/app_strings.dart';
import 'package:assiut_project/core/app_dimensions.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/custom_widgets/main_app_bar.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/custom_widgets/main_text_black.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/custom_widgets/main_text_blue.dart';
import 'package:flutter/material.dart';

import 'main_container_notifications.dart';

class Notifications extends StatelessWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context: context, designHeight: 778, designWidth: 360);
    return Scaffold(
      // bottomNavigationBar:  const MainBottomNavigationBar(
      //   designHeight: 1006,
      //   designWidth: 360,
      // ),
      body: Column(
        children: [
          const MainAppBar(
            designHeight: 1006,
            designWidth: 360,
            myTitle: AppStrings.kNotificationsCommon,
          ),
          SizedBox(
            height: AppDimensions.getDimensions(requiredHeight: 16),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const MainTextBlue(
                  myText: AppStrings.kNotificationsMainTextCommon,
                ),
                SizedBox(
                  height: AppDimensions.getDimensions(requiredHeight: 14),
                ),
                MainTextBlack(
                  myText: AppStrings.kRecentlyCommon,
                  fontSize: AppDimensions.defaultSize * 16,
                ),
                SizedBox(
                  height: AppDimensions.getDimensions(requiredHeight: 12),
                ),
                const MainContainerNotifications(
                  time: AppStrings.kSixMinCommon,
                  title: AppStrings.kFirstGroupCommon,
                  description: AppStrings.kFDescriptionNotificationsCommon,
                ),
                SizedBox(
                  height: AppDimensions.getDimensions(requiredHeight: 8),
                ),
                const MainContainerNotifications(
                  time: AppStrings.kThreeHoursCommon,
                  title: AppStrings.kGroupStaticsCommon,
                  description: AppStrings.kSDescriptionNotificationsCommon,
                ),
                SizedBox(
                  height: AppDimensions.getDimensions(requiredHeight: 8),
                ),
                const MainContainerNotifications(
                  time: AppStrings.kThreeHoursCommon,
                  title: AppStrings.kGroupStaticsCommon,
                  description: AppStrings.kSDescriptionNotificationsCommon,
                ),
                SizedBox(
                  height: AppDimensions.getDimensions(requiredHeight: 12),
                ),
                MainTextBlack(
                  myText: AppStrings.kLaterCommon,
                  fontSize: AppDimensions.defaultSize * 16,
                ),
                SizedBox(
                  height: AppDimensions.getDimensions(requiredHeight: 12),
                ),
                const MainContainerNotifications(
                  time: AppStrings.kThreeHoursCommon,
                  title: AppStrings.kGroupStaticsCommon,
                  description: AppStrings.kSDescriptionNotificationsCommon,
                ),
                SizedBox(
                  height: AppDimensions.getDimensions(requiredHeight: 8),
                ),
                const MainContainerNotifications(
                  time: AppStrings.kThreeHoursCommon,
                  title: AppStrings.kGroupStaticsCommon,
                  description: AppStrings.kSDescriptionNotificationsCommon,
                ),
                SizedBox(
                  height: AppDimensions.getDimensions(requiredHeight: 8),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
