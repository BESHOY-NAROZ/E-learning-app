import 'package:assiut_project/core/app_constants/app_colors.dart';
import 'package:assiut_project/core/app_constants/app_strings.dart';
import 'package:assiut_project/core/app_dimensions.dart';
import 'package:flutter/material.dart';

class AppBarGroups extends StatelessWidget {
  final double? designHeight;
  final double? designWidth;
  final String? myTitle;

  const AppBarGroups({
    Key? key,
    this.designHeight,
    this.designWidth,
    this.myTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppDimensions.init(
        context: context, designHeight: designHeight, designWidth: designWidth);
    return SafeArea(
      child: SizedBox(
        width: AppDimensions.getDimensions(requiredWidth: 360),
        height: AppDimensions.getDimensions(requiredHeight: 100),
        child: Container(
          color: AppColors.kAppBarLogin,
          child: Column(
            children: [
              SizedBox(
                height: AppDimensions.getDimensions(requiredHeight: 25),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: AppDimensions.getDimensions(requiredHeight: 18),
                    ),
                    child: Text(
                      myTitle!,
                      style: const TextStyle(
                          fontFamily: 'Almarai',
                          color: AppColors.kAppBarTitleMainScreenHome,
                          fontWeight: FontWeight.w700,
                          fontSize: 20),
                    ),
                  ),
                  SizedBox(
                    width: AppDimensions.getDimensions(requiredWidth: 39),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      right: AppDimensions.getDimensions(requiredWidth: 20),
                    ),
                    child: InkWell(onTap: () {

                    },
                      child: Container(
                        width: AppDimensions.getDimensions(requiredWidth: 45),
                        height: AppDimensions.getDimensions(requiredHeight: 45),
                        decoration: BoxDecoration(
                          color: AppColors.kBottomAppBarMainScreenHome.withOpacity(0.1),
                          shape: BoxShape.circle
                        ),
                        child: const Icon(
                          Icons.arrow_forward_ios_outlined,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
