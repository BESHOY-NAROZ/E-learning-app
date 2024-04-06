import 'package:assiut_project/core/app_constants/app_assets.dart';
import 'package:assiut_project/core/app_constants/app_colors.dart';
import 'package:assiut_project/core/app_constants/app_strings.dart';
import 'package:assiut_project/core/app_dimensions.dart';
import 'package:assiut_project/main_layers/presentaion_layer/main_screens/shared_components_mainscreen/app_bar_mainscreen.dart';
import 'package:assiut_project/main_layers/presentaion_layer/main_screens/shared_components_mainscreen/bottom_navigaton_bar_mainscreen.dart';
import 'package:assiut_project/main_layers/presentaion_layer/main_screens/shared_components_mainscreen/main_text_mainscreen.dart';
import 'package:flutter/material.dart';

class MenuMainScreen extends StatelessWidget {
  const MenuMainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context: context, designHeight: 825, designWidth: 360);
    return Scaffold(
      bottomNavigationBar: const BottomNavigationBarMainScreen(
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
                  AppStrings.kHintTextMainScreenMenu,
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

              ],
            ),
          ),
        ],
      ),
    );
  }
}
