import 'package:assiut_project/core/app_constants/app_assets.dart';
import 'package:assiut_project/core/app_constants/app_colors.dart';
import 'package:assiut_project/core/app_constants/app_lists.dart';
import 'package:assiut_project/core/app_constants/app_strings.dart';
import 'package:assiut_project/core/app_dimensions.dart';
import 'package:flutter/material.dart';

class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);
  static int index = 3;

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context: context, designHeight: 1006, designWidth: 360);
    return Scaffold(
      bottomNavigationBar: SizedBox(
        height: AppDimensions.getDimensions(requiredHeight: 70),
        width: AppDimensions.getDimensions(requiredWidth: 305),
        child: BottomNavigationBar(
          onTap: (value) {
            setState(() {
              MyHome.index = value;
            });
          },
          elevation: 20,
          currentIndex: MyHome.index,
          type: BottomNavigationBarType.fixed,
          backgroundColor: AppColors.kBottomAppBarMainScreenHome,
          unselectedItemColor: AppColors.kBottomNavigationBarUnSelectedMainScreenHome,
          selectedItemColor: AppColors.kBottomNavigationBarSelectedMainScreenHome,
          selectedLabelStyle: TextStyle(
              fontFamily: 'Almarai',
              fontWeight: FontWeight.w700,
              fontSize: AppDimensions.defaultSize * 11),
          unselectedLabelStyle: TextStyle(
              fontFamily: 'Almarai',
              fontWeight: FontWeight.w700,
              fontSize: AppDimensions.defaultSize * 11),
          items: [
            BottomNavigationBarItem(
                icon: SizedBox(
                    width: AppDimensions.getDimensions(requiredWidth: 24),
                    height: AppDimensions.getDimensions(requiredHeight: 24),
                    child: Image.asset(
                      AppAssets.kBottomNavigationBarItem1HomeScreen,
                      color: MyHome.index == 0
                          ? AppColors.kBottomNavigationBarSelectedMainScreenHome
                          : AppColors.kBottomNavigationBarUnSelectedMainScreenHome,
                    )),
                label: AppStrings.kBottomNavigationBarMenuMainScreenHome),
            BottomNavigationBarItem(
                icon: SizedBox(
                    width: AppDimensions.getDimensions(requiredWidth: 24),
                    height: AppDimensions.getDimensions(requiredHeight: 24),
                    child: Image.asset(
                      AppAssets.kBottomNavigationBarItem2HomeScreen,
                      color: MyHome.index == 1
                          ? AppColors.kBottomNavigationBarSelectedMainScreenHome
                          : AppColors.kBottomNavigationBarUnSelectedMainScreenHome,
                    )),
                label: AppStrings.kBottomNavigationBarNotificationMainScreenHome),
            BottomNavigationBarItem(
                icon: SizedBox(
                    width: AppDimensions.getDimensions(requiredWidth: 24),
                    height: AppDimensions.getDimensions(requiredHeight: 24),
                    child: Image.asset(
                      AppAssets.kVector3HomeScreen,
                      color: MyHome.index == 2
                          ? AppColors.kBottomNavigationBarSelectedMainScreenHome
                          : AppColors.kBottomNavigationBarUnSelectedMainScreenHome,
                    )),
                label: AppStrings.kBottomNavigationBarUsersMainScreenHome),
            BottomNavigationBarItem(
                icon: SizedBox(
                    width: AppDimensions.getDimensions(requiredWidth: 24),
                    height: AppDimensions.getDimensions(requiredHeight: 24),
                    child: Image.asset(
                      AppAssets.kBottomNavigationBarItem4HomeScreen,
                      color: MyHome.index == 3
                          ? AppColors.kBottomNavigationBarSelectedMainScreenHome
                          : AppColors.kBottomNavigationBarUnSelectedMainScreenHome,
                    )),
                label: AppStrings.kBottomNavigationBarHomeMainScreenHome),
          ],
        ),
      ),
      body: AppLists.myAssistantScreens[MyHome.index],
    );
  }
}
