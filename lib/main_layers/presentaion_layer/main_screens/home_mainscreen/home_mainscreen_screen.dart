import 'package:assiut_project/core/app_constants/app_assets.dart';
import 'package:assiut_project/core/app_constants/app_colors.dart';
import 'package:assiut_project/core/app_constants/app_strings.dart';
import 'package:assiut_project/core/app_dimensions.dart';
import 'package:assiut_project/main_layers/presentaion_layer/main_screens/shared_components_mainscreen/app_bar_mainscreen.dart';
import 'package:assiut_project/main_layers/presentaion_layer/main_screens/shared_components_mainscreen/bottom_List_mainscreen.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_bottom_navigaton_bar.dart';
import 'package:assiut_project/main_layers/presentaion_layer/main_screens/shared_components_mainscreen/main_text_mainscreen.dart';
import 'package:assiut_project/main_layers/presentaion_layer/main_screens/shared_components_mainscreen/more_row_mainscreen.dart';
import 'package:assiut_project/main_layers/presentaion_layer/main_screens/shared_components_mainscreen/small_button_mainscreen.dart';
import 'package:flutter/material.dart';

class HomeMainScreen extends StatelessWidget {
  const HomeMainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context: context, designHeight: 1006, designWidth: 360);
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
            height: AppDimensions.getDimensions(requiredHeight: 15),
          ),
          Padding(
            padding: EdgeInsets.only(
                right: AppDimensions.getDimensions(requiredWidth: 19)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const MainTextMainScreen(
                    myText: AppStrings.kMainTextMainScreenHome),
                SizedBox(
                  height: AppDimensions.getDimensions(requiredHeight: 10),
                ),
                const MoreRowMainScreen(
                    title: AppStrings.kHintText1MainScreenHome,
                    vectorIcon: AppAssets.kVector1HomeScreen),
                SizedBox(
                  height: AppDimensions.getDimensions(requiredHeight: 15),
                ),
                SizedBox(
                  height: AppDimensions.getDimensions(requiredHeight: 160),
                  child: ListView.builder(
                    itemCount: 3,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return SizedBox(
                          width:
                              AppDimensions.getDimensions(requiredWidth: 333),
                          child: Padding(
                            padding:  EdgeInsets.symmetric
                              (horizontal:AppDimensions.getDimensions
                              (requiredWidth: 3)),
                            child: Image.asset(
                              AppAssets.kListImageHomeScreen,
                              fit: BoxFit.fill,
                            ),
                          ));
                    },
                  ),
                ),
                SizedBox(
                  height: AppDimensions.getDimensions(requiredHeight: 16),
                ),
                Padding(
                  padding: EdgeInsets.only(

                    left: AppDimensions.getDimensions(
                      requiredWidth: 16,
                    ),
                    right: AppDimensions.getDimensions(requiredWidth: 16),
                  ),
                  child: Container(
                    width: AppDimensions.getDimensions(
                      requiredWidth: 328,
                    ),
                    height: AppDimensions.getDimensions(requiredHeight: 3),
                    color: AppColors.kSplitterMainScreenHome,
                  ),
                ),

                SizedBox(height: AppDimensions.getDimensions(
                    requiredHeight: 28,),),
                const MoreRowMainScreen(
                    title: AppStrings.kHintText2MainScreenHome,
                    vectorIcon: AppAssets.kVector2HomeScreen),
                SizedBox(
                  height: AppDimensions.getDimensions(requiredHeight: 15),
                ),
                SizedBox(
                  height: AppDimensions.getDimensions(requiredHeight: 57),
                  child: ListView.builder(
                    itemCount: 3,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.only(
                          left: AppDimensions.getDimensions(requiredWidth: 10),
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            color: AppColors.kSmallListMainScreenHome,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          width:
                              AppDimensions.getDimensions(requiredWidth: 194),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  const Text(
                                    AppStrings
                                        .kSmallListFirstTextMainScreenHome,
                                    style: TextStyle(
                                        fontFamily: 'Almarai',
                                        color: AppColors
                                            .kSmallListFirstTextMainScreenHome,
                                        fontWeight: FontWeight.w700,
                                        fontSize: 16),
                                  ),
                                  SizedBox(
                                    height: AppDimensions.getDimensions(
                                        requiredHeight: 4),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      bottom: AppDimensions.getDimensions(
                                          requiredHeight: 1),
                                    ),
                                    child: const Text(
                                      AppStrings
                                          .kSmallListSecondTextMainScreenHome,
                                      style: TextStyle(
                                          fontFamily: 'Almarai',
                                          color: AppColors
                                              .kSmallListSecondTextMainScreenHome,
                                          fontWeight: FontWeight.w700,
                                          fontSize: 12),
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                margin: EdgeInsets.only(
                                    left: AppDimensions.getDimensions(
                                        requiredWidth: 17),
                                    right: AppDimensions.getDimensions(
                                        requiredWidth: 13)),
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
                                        color: AppColors
                                            .kAppBarBorderMainScreenHome,
                                        width: 3)),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: AppDimensions.getDimensions(requiredHeight: 16),
                ),
                Padding(
                  padding: EdgeInsets.only(

                    left: AppDimensions.getDimensions(
                      requiredWidth: 16,
                    ),
                    right: AppDimensions.getDimensions(requiredWidth: 16),
                  ),
                  child: Container(
                    width: AppDimensions.getDimensions(
                      requiredWidth: 328,
                    ),
                    height: AppDimensions.getDimensions(requiredHeight: 3),
                    color: AppColors.kSplitterMainScreenHome,
                  ),
                ),

                SizedBox(height: AppDimensions.getDimensions(
                  requiredHeight: 28,),),
                const MoreRowMainScreen(
                    title: AppStrings.kHintText3MainScreenHome,
                    vectorIcon: AppAssets.kVector3HomeScreen),
                SizedBox(
                  height: AppDimensions.getDimensions(requiredHeight: 15),
                ),
                const BottomListMainScreen(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
