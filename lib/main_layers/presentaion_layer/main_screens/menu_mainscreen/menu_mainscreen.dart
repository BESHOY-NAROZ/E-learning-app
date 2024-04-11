import 'package:assiut_project/core/app_constants/app_assets.dart';
import 'package:assiut_project/core/app_constants/app_colors.dart';
import 'package:assiut_project/core/app_constants/app_strings.dart';
import 'package:assiut_project/core/app_dimensions.dart';
import 'package:assiut_project/core/app_routes.dart';
import 'package:assiut_project/main_layers/presentaion_layer/main_screens/shared_components_mainscreen/app_bar_mainscreen.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_bottom_navigaton_bar.dart';
import 'package:assiut_project/main_layers/presentaion_layer/main_screens/shared_components_mainscreen/main_button_main_screen_menu.dart';
import 'package:assiut_project/main_layers/presentaion_layer/main_screens/shared_components_mainscreen/main_text_mainscreen.dart';
import 'package:flutter/material.dart';

class MenuMainScreen extends StatelessWidget {
  const MenuMainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context: context, designHeight: 825, designWidth: 360);
    return Scaffold(
      bottomNavigationBar: const MainBottomNavigationBar(
        designHeight: 1006,
        designWidth: 360,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          const AppBarMainScreen(
            designHeight: 1006,
            designWidth: 360,
          ),
          SizedBox(
            height: AppDimensions.getDimensions(requiredHeight: 16),
          ),
          Padding(
            padding: EdgeInsets.only(
                right: AppDimensions.getDimensions(requiredWidth: 19),
                left: AppDimensions.getDimensions(requiredWidth: 19),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const MainTextMainScreen(
                  myText: AppStrings.kMainTextMainScreenMenu,
                ),
                SizedBox(
                  height: AppDimensions.getDimensions(requiredHeight: 12),
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
                  height: AppDimensions.getDimensions(requiredHeight: 12),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, RoutesManager.qRMainScreen);
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
                              width:
                              AppDimensions.getDimensions(requiredWidth: 5),
                            ),
                            SizedBox(
                                width: AppDimensions.getDimensions(
                                    requiredWidth: 34),
                                height: AppDimensions.getDimensions(
                                    requiredHeight: 34),
                                child: Image.asset(AppAssets.kMenuQRScreen))
                          ],
                        ),
                      ),
                    ),

                    SizedBox(
                      width: AppDimensions.getDimensions(requiredWidth: 8),
                    ),
                    Container(
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
                            width:
                            AppDimensions.getDimensions(requiredWidth: 5),
                          ),
                          SizedBox(
                              width: AppDimensions.getDimensions(
                                  requiredWidth: 34),
                              height: AppDimensions.getDimensions(
                                  requiredHeight: 34),
                              child: Image.asset(AppAssets.kMenuUserScreen))
                        ],
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
                const MainButtonMainScreenMenu(
                  myTitle: AppStrings.kFirstButtonMainScreenMenu,
                  myIcon: AppAssets.kVector2HomeScreen,
                ),
                SizedBox(
                  height: AppDimensions.getDimensions(requiredHeight: 8),
                ),
                const MainButtonMainScreenMenu(
                  myTitle: AppStrings.kSecondButtonMainScreenMenu,
                  myIcon: AppAssets.kVector3HomeScreen,
                ),
                SizedBox(
                  height: AppDimensions.getDimensions(requiredHeight: 8),
                ),
                const MainButtonMainScreenMenu(
                  myTitle: AppStrings.kThirdButtonMainScreenMenu,
                  myIcon: AppAssets.kBottomNavigationBarItem2HomeScreen,
                ),
                SizedBox(
                  height: AppDimensions.getDimensions(requiredHeight: 8),
                ),
                const MainButtonMainScreenMenu(
                  myTitle: AppStrings.kFourthButtonMainScreenMenu,
                  myIcon: AppAssets.kSettingsMainScreen,
                ),
                SizedBox(
                  height: AppDimensions.getDimensions(requiredHeight: 8),
                ),
                const MainButtonMainScreenMenu(
                  myTitle: AppStrings.kFifthButtonMainScreenMenu,
                  myIcon: AppAssets.kCallMeMainScreen,
                ),
                SizedBox(
                  height: AppDimensions.getDimensions(requiredHeight: 8),
                ),
                const MainButtonMainScreenMenu(
                  myTitle: AppStrings.kSixthButtonMainScreenMenu,
                  myIcon: AppAssets.kOpinionMainScreen,
                ),
                SizedBox(
                  height: AppDimensions.getDimensions(requiredHeight: 8),
                ),
                const MainButtonMainScreenMenu(
                  myTitle: AppStrings.kSeventhButtonMainScreenMenu,
                  myIcon: AppAssets.kHelpMainScreen,
                ),
                SizedBox(
                  height: AppDimensions.getDimensions(requiredHeight: 8),
                ),
                const MainButtonMainScreenMenu(
                  myTitle: AppStrings.kEighthButtonMainScreenMenu,
                  myIcon: AppAssets.kLogOutMainScreen,
                ),
                SizedBox(
                  height: AppDimensions.getDimensions(requiredHeight: 8),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


