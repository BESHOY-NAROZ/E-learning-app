import 'package:assiut_project/core/app_constants/app_colors.dart';
import 'package:assiut_project/core/app_constants/app_strings.dart';
import 'package:assiut_project/core/app_dimensions.dart';
import 'package:assiut_project/core/app_routes.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/custom_widgets/main_app_bar.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/custom_widgets/main_text_black.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/custom_widgets/main_text_blue.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/custom_widgets/main_text_grey.dart';
import 'package:flutter/material.dart';

import 'main_container_notifications.dart';

class NotificationsTeacher extends StatelessWidget {
  const NotificationsTeacher({Key? key}) : super(key: key);

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
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const MainTextBlue(
                      myText: AppStrings.kNotificationsMainTextCommon,
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 16),
                    ),
                    MainTextBlack(
                      myText: AppStrings.kRecentlyCommon,
                      fontSize: AppDimensions.defaultSize * 16,
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 3),
                    ),
                    Container(
                      width: AppDimensions.getDimensions(requiredWidth: 320),
                      height: AppDimensions.getDimensions(requiredHeight: 115),
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
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: MainTextGrey(
                                    myText: AppStrings.kSixMinCommon,
                                    color: AppColors.kHintNotificationCommon,
                                    fontSize: AppDimensions.defaultSize * 10,
                                  ),
                                ),
                                const Spacer(),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    MainTextBlack(
                                      myText: AppStrings.kNameCommon,
                                      fontSize: AppDimensions.defaultSize * 12,
                                      color: AppColors.kMainBlack,
                                    ),
                                    SizedBox(
                                      height: AppDimensions.getDimensions(requiredHeight: 5),
                                    ),
                                    MainTextGrey(
                                      myText: AppStrings.kRequestCommon,
                                      color: AppColors.kMainGery8D,
                                      fontWeight: FontWeight.w400,
                                      fontSize: AppDimensions.defaultSize * 11,
                                    )
                                  ],
                                ),
                                SizedBox(
                                  width: AppDimensions.getDimensions(requiredWidth: 9),
                                ),
                                Container(
                                  width: AppDimensions.getDimensions(
                                    requiredWidth: 45,
                                  ),
                                  height: AppDimensions.getDimensions(
                                    requiredHeight: 45,
                                  ),
                                  decoration: BoxDecoration(
                                      color: AppColors.kAppBarPhotoMainScreenHome,
                                      shape: BoxShape.circle,
                                      border: Border.all(color: AppColors.kMainGery96, width: 3)),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: AppDimensions.getDimensions(requiredHeight: 9),
                            ),
                            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                              Container(
                                height: AppDimensions.getDimensions(requiredHeight: 35),
                                width: AppDimensions.getDimensions(requiredWidth: 136),
                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
                                child: MaterialButton(
                                    color: AppColors.kMainGeryDA,
                                    shape: const RoundedRectangleBorder(),
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: Text(
                                      AppStrings.kCancelCommon,
                                      style: TextStyle(
                                          fontFamily: 'Almarai',
                                          color: AppColors.kMainScreenNewVersionButtonText,
                                          fontWeight: FontWeight.w700,
                                          fontSize: AppDimensions.defaultSize * 16),
                                    )),
                              ),
                              SizedBox(
                                width: AppDimensions.getDimensions(requiredWidth: 10),
                              ),
                              Container(
                                height: AppDimensions.getDimensions(requiredHeight: 35),
                                width: AppDimensions.getDimensions(requiredWidth: 136),
                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
                                child: MaterialButton(
                                    color: AppColors.kMainButton,
                                    shape: const RoundedRectangleBorder(),
                                    onPressed: () {
                                      Navigator.pushNamed(
                                          context, RoutesManager.acceptRequestDoneTeacher);
                                    },
                                    child: Text(
                                      AppStrings.kAcceptCommon,
                                      style: TextStyle(
                                          fontFamily: 'Almarai',
                                          color: AppColors.kMainTextWhite,
                                          fontWeight: FontWeight.w700,
                                          fontSize: AppDimensions.defaultSize * 16),
                                    )),
                              ),
                              SizedBox(
                                width: AppDimensions.getDimensions(requiredWidth: 15),
                              )
                            ]),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 16),
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
              ),
            ),
          )
        ],
      ),
    );
  }
}
