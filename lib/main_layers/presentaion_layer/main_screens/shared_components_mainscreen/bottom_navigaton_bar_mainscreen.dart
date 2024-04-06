import 'package:assiut_project/core/app_constants/app_assets.dart';
import 'package:assiut_project/core/app_constants/app_colors.dart';
import 'package:assiut_project/core/app_constants/app_strings.dart';
import 'package:assiut_project/core/app_dimensions.dart';
import 'package:flutter/material.dart';

class BottomNavigationBarMainScreen extends StatefulWidget {
  final double? designHeight;
  final double? designWidth;

  const BottomNavigationBarMainScreen({
    super.key,
    this.designHeight,
    this.designWidth,
  });

  @override
  State<BottomNavigationBarMainScreen> createState() =>
      _BottomNavigationBarMainScreenState();
}

class _BottomNavigationBarMainScreenState
    extends State<BottomNavigationBarMainScreen> {
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
