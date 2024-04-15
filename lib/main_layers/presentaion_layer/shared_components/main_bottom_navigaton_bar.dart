import 'package:assiut_project/core/app_constants/app_assets.dart';
import 'package:assiut_project/core/app_constants/app_colors.dart';
import 'package:assiut_project/core/app_constants/app_strings.dart';
import 'package:assiut_project/core/app_dimensions.dart';
import 'package:assiut_project/core/app_routes.dart';
import 'package:flutter/material.dart';

class MainBottomNavigationBar extends StatefulWidget {
  final double? designHeight;
  final double? designWidth;

  const MainBottomNavigationBar({
    super.key,
    this.designHeight,
    this.designWidth,
  });

  @override
  State<MainBottomNavigationBar> createState() =>
      _BottomNavigationBarMainScreenState();
}

class _BottomNavigationBarMainScreenState
    extends State<MainBottomNavigationBar> {
  static int index = 3;

  @override
  Widget build(BuildContext context) {
    AppDimensions.init(
        context: context,
        designHeight: widget.designHeight,
        designWidth: widget.designWidth);
    return SizedBox(
      height: AppDimensions.getDimensions(requiredHeight: 57.6),
      width: AppDimensions.getDimensions(requiredWidth: 305),
      child: BottomNavigationBar(
        onTap: (value) {
          if(value == 0){
            Navigator.pushReplacementNamed(context, RoutesManager.menuMainScreen);
          }
         else if(value == 1){
            Navigator.pushReplacementNamed(context, RoutesManager.notificationsCommon);
          } else if(value == 2){
            Navigator.pushReplacementNamed(context, RoutesManager.studentsGroups);
          }
          else if(value == 3){
            Navigator.pushReplacementNamed(context, RoutesManager.homeMainScreen);
          }
          setState(() {
            index = value;
          });
        },
        elevation: 20,
        currentIndex: index,
        type: BottomNavigationBarType.fixed,
        backgroundColor: AppColors.kBottomAppBarMainScreenHome,
        unselectedItemColor:
            AppColors.kBottomNavigationBarUnSelectedMainScreenHome,
        selectedItemColor: AppColors.kBottomNavigationBarSelectedMainScreenHome,
        selectedLabelStyle: const TextStyle(
            fontFamily: 'Almarai', fontWeight: FontWeight.w700, fontSize: 11),
        unselectedLabelStyle: const TextStyle(
            fontFamily: 'Almarai', fontWeight: FontWeight.w700, fontSize: 11),
        items: [
          BottomNavigationBarItem(
              icon: SizedBox(
                  width: AppDimensions.getDimensions(requiredWidth: 24),
                  height: AppDimensions.getDimensions(requiredHeight: 24),
                  child: Image.asset(
                    AppAssets.kBottomNavigationBarItem1HomeScreen,
                    color: index == 0
                        ? AppColors.kBottomNavigationBarSelectedMainScreenHome
                        : AppColors
                            .kBottomNavigationBarUnSelectedMainScreenHome,
                  )),
              label: AppStrings.kBottomNavigationBarMenuMainScreenHome),
          BottomNavigationBarItem(
              icon: SizedBox(
                  width: AppDimensions.getDimensions(requiredWidth: 24),
                  height: AppDimensions.getDimensions(requiredHeight: 24),
                  child: Image.asset(
                    AppAssets.kBottomNavigationBarItem2HomeScreen,
                    color: index == 1
                        ? AppColors.kBottomNavigationBarSelectedMainScreenHome
                        : AppColors
                            .kBottomNavigationBarUnSelectedMainScreenHome,
                  )),
              label: AppStrings.kBottomNavigationBarNotificationMainScreenHome),
          BottomNavigationBarItem(
              icon: SizedBox(
                  width: AppDimensions.getDimensions(requiredWidth: 24),
                  height: AppDimensions.getDimensions(requiredHeight: 24),
                  child: Image.asset(
                    AppAssets.kVector3HomeScreen,
                    color: index == 2
                        ? AppColors.kBottomNavigationBarSelectedMainScreenHome
                        : AppColors
                            .kBottomNavigationBarUnSelectedMainScreenHome,
                  )),
              label: AppStrings.kBottomNavigationBarUsersMainScreenHome),
          BottomNavigationBarItem(
              icon: SizedBox(
                  width: AppDimensions.getDimensions(requiredWidth: 24),
                  height: AppDimensions.getDimensions(requiredHeight: 24),
                  child: Image.asset(
                    AppAssets.kBottomNavigationBarItem4HomeScreen,
                    color: index == 3
                        ? AppColors.kBottomNavigationBarSelectedMainScreenHome
                        : AppColors
                            .kBottomNavigationBarUnSelectedMainScreenHome,
                  )),
              label: AppStrings.kBottomNavigationBarHomeMainScreenHome),
        ],
      ),
    );
  }
}
