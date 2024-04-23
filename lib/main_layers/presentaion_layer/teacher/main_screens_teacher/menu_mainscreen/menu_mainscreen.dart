import 'package:assiut_project/core/app_constants/app_assets.dart';
import 'package:assiut_project/core/app_constants/app_colors.dart';
import 'package:assiut_project/core/app_constants/app_strings.dart';
import 'package:assiut_project/core/app_dimensions.dart';
import 'package:assiut_project/core/app_routes.dart';
import 'package:assiut_project/main_layers/presentaion_layer/assistant/main_screens/shared_components_mainscreen/main_button_main_screen_menu.dart';
import 'package:assiut_project/main_layers/presentaion_layer/assistant/main_screens/shared_components_mainscreen/main_text_mainscreen.dart';
import 'package:assiut_project/main_layers/presentaion_layer/teacher/main_screens_teacher/shared_components_mainscreen/app_bar_mainscreen_teacher.dart';
import 'package:flutter/material.dart';

import 'exit_bottom_sheet.dart';

class MenuMainScreenTeacher extends StatelessWidget {
  const MenuMainScreenTeacher({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context: context, designHeight: 778, designWidth: 360);
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          const AppBarMainScreenTeacher(
            designHeight: 1006,
            designWidth: 360,
          ),
          SizedBox(
            height: AppDimensions.getDimensions(requiredHeight: 15),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(
                right: AppDimensions.getDimensions(requiredWidth: 19),
                left: AppDimensions.getDimensions(requiredWidth: 19),
              ),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const MainTextMainScreen(
                      myText: AppStrings.kMainTextMainScreenMenu,
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 11),
                    ),
                    const Text(
                      AppStrings.kHintTextFirstMainScreenMenu,
                      style: TextStyle(
                          fontFamily: 'Almarai',
                          color: AppColors.kHintTextMainScreenHome,
                          fontWeight: FontWeight.w700,
                          fontSize: 16),
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 11),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, RoutesManager.qRMainScreenTeacher);
                          },
                          child: Container(
                            height: AppDimensions.getDimensions(requiredHeight: 63),
                            width: AppDimensions.getDimensions(requiredWidth: 156),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: AppColors.kContainerMainScreenMenu),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  AppStrings.kSecondContainerMainScreenMenu,
                                  textAlign: TextAlign.end,
                                  style: TextStyle(
                                      fontFamily: 'Almarai',
                                      color: AppColors.kHintTextMainScreenHome,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 12),
                                ),
                                SizedBox(
                                  width: AppDimensions.getDimensions(requiredWidth: 5),
                                ),
                                SizedBox(
                                    width: AppDimensions.getDimensions(requiredWidth: 34),
                                    height: AppDimensions.getDimensions(requiredHeight: 34),
                                    child: Image.asset(AppAssets.kMenuQRScreen))
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: AppDimensions.getDimensions(requiredWidth: 8),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, RoutesManager.profileEditingTeacher);
                          },
                          child: Container(
                            height: AppDimensions.getDimensions(requiredHeight: 63),
                            width: AppDimensions.getDimensions(requiredWidth: 156),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: AppColors.kContainerMainScreenMenu),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  AppStrings.kFirstContainerMainScreenMenu,
                                  textAlign: TextAlign.end,
                                  style: TextStyle(
                                      fontFamily: 'Almarai',
                                      color: AppColors.kHintTextMainScreenHome,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 12),
                                ),
                                SizedBox(
                                  width: AppDimensions.getDimensions(requiredWidth: 5),
                                ),
                                SizedBox(
                                    width: AppDimensions.getDimensions(requiredWidth: 34),
                                    height: AppDimensions.getDimensions(requiredHeight: 34),
                                    child: Image.asset(AppAssets.kMenuUserScreen))
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 12),
                    ),
                    const Text(
                      AppStrings.kHintTextSecondMainScreenMenu,
                      style: TextStyle(
                          fontFamily: 'Almarai',
                          color: AppColors.kHintTextMainScreenHome,
                          fontWeight: FontWeight.w700,
                          fontSize: 16),
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 12),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, RoutesManager.teachers);
                      },
                      child: const MainButtonMainScreenMenu(
                        myTitle: AppStrings.kCreatedExamsHome,
                        myIcon: AppAssets.kExamVector,
                      ),
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 8),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, RoutesManager.studentsGroups);
                      },
                      child: const MainButtonMainScreenMenu(
                        myTitle: AppStrings.kCorrectExamsHome,
                        myIcon: AppAssets.kExamVector,
                      ),
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 8),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, RoutesManager.notificationsCommon);
                      },
                      child: const MainButtonMainScreenMenu(
                        myTitle: AppStrings.kAssistantsHome,
                        myIcon: AppAssets.kHand,
                      ),
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 8),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, RoutesManager.generalSettings);
                      },
                      child: const MainButtonMainScreenMenu(
                        myTitle: AppStrings.kQuestionsBankHome,
                        myIcon: AppAssets.kAddQuestion,
                      ),
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 8),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, RoutesManager.purchasesTeacher);
                      },
                      child: const MainButtonMainScreenMenu(
                        myTitle: AppStrings.kEarlyBuyHome,
                        myIcon: AppAssets.kOrders,
                      ),
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 8),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, RoutesManager.pointsProgramTeacher);
                      },
                      child: const MainButtonMainScreenMenu(
                        myTitle: AppStrings.kPointsProgramHome,
                        myIcon: AppAssets.kPoints,
                      ),
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 8),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, RoutesManager.studentsGroupsTeacher);
                      },
                      child: const MainButtonMainScreenMenu(
                        myTitle: AppStrings.kStudentsGroupsHome,
                        myIcon: AppAssets.kMenuUserScreen,
                      ),
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 8),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, RoutesManager.generalSettingsTeacher);
                      },
                      child: const MainButtonMainScreenMenu(
                        myTitle: AppStrings.kAppSettingsHome,
                        myIcon: AppAssets.kSettingsMainScreen,
                      ),
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 8),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, RoutesManager.helpBody);
                      },
                      child: const MainButtonMainScreenMenu(
                        myTitle: AppStrings.kYourOpinionHome,
                        myIcon: AppAssets.kOpinionMainScreen,
                      ),
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 8),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, RoutesManager.inviteFriendsTeacher);
                      },
                      child: const MainButtonMainScreenMenu(
                        myTitle: AppStrings.kInviteFriendsHome,
                        myIcon: AppAssets.kShare,
                      ),
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 8),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, RoutesManager.helpBodyTeacher);
                      },
                      child: const MainButtonMainScreenMenu(
                        myTitle: AppStrings.kHelpHome,
                        myIcon: AppAssets.kHelpMainScreen,
                      ),
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 8),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, RoutesManager.contactUSTeacher);
                      },
                      child: const MainButtonMainScreenMenu(
                        myTitle: AppStrings.kFifthButtonMainScreenMenu,
                        myIcon: AppAssets.kCallMeMainScreen,
                      ),
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 8),
                    ),
                    const ExitBottomSheet(),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 8),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
