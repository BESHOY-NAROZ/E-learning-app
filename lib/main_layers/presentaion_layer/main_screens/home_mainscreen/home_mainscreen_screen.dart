import 'package:assiut_project/core/app_constants/app_assets.dart';
import 'package:assiut_project/core/app_constants/app_colors.dart';
import 'package:assiut_project/core/app_constants/app_strings.dart';
import 'package:assiut_project/core/app_dimensions.dart';
import 'package:assiut_project/main_layers/presentaion_layer/main_screens/shared_components_mainscreen/app_bar_mainscreen.dart';
import 'package:assiut_project/main_layers/presentaion_layer/main_screens/shared_components_mainscreen/main_text_mainscreen.dart';
import 'package:flutter/material.dart';

class HomeMainScreen extends StatelessWidget {
  const HomeMainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context: context, designHeight: 1006, designWidth: 360);
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          const AppBarMainScreen(),
          Padding(
            padding: EdgeInsets.only(
                top: AppDimensions.getDimensions(requiredHeight: 15),
                right: AppDimensions.getDimensions(requiredWidth: 19)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const MainTextMainScreen(
                    myText: AppStrings.kMainTextMainScreenHome),
                Padding(
                  padding: EdgeInsets.only(
                    top: AppDimensions.getDimensions(requiredHeight: 9),
                    bottom: AppDimensions.getDimensions(requiredHeight: 9),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const Text(
                        AppStrings.kHintText1MainScreenHome,
                        style: TextStyle(
                            fontFamily: 'Almarai',
                            color: AppColors.kHintTextMainScreenHome,
                            fontWeight: FontWeight.w700,
                            fontSize: 16),
                      ),
                      SizedBox(
                        width: AppDimensions.getDimensions(requiredWidth: 3.42),
                      ),
                      SizedBox(
                        width: AppDimensions.getDimensions(requiredWidth: 23.3),
                        height:
                            AppDimensions.getDimensions(requiredHeight: 19.3),
                        child: Image.asset(AppAssets.kVector1HomeScreen),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: AppDimensions.getDimensions
                    (requiredHeight: 160),
                  child: ListView.builder(
                    itemCount: 3,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return SizedBox(
                          width: AppDimensions.getDimensions(requiredWidth:
                          333),
                          child: Image.asset(AppAssets.kListImageHomeScreen,
                            fit: BoxFit.fill,));
                    },),
                ),
                Container(
                  width: AppDimensions.getDimensions(requiredWidth:328 ,),
                  height:AppDimensions.getDimensions(requiredHeight: 3 ),
                  color: AppColors.kSplitterMainScreenHome,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Text(
                      AppStrings.kHintText2MainScreenHome,
                      style: TextStyle(
                          fontFamily: 'Almarai',
                          color: AppColors.kHintTextMainScreenHome,
                          fontWeight: FontWeight.w700,
                          fontSize: 16),
                    ),
                    SizedBox(
                      width: AppDimensions.getDimensions(requiredWidth: 3.42),
                    ),

                    SizedBox(
                      width: AppDimensions.getDimensions(requiredWidth: 23.3),
                      height:
                      AppDimensions.getDimensions(requiredHeight: 19.3),
                      child: Image.asset(AppAssets.kVector2HomeScreen),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
