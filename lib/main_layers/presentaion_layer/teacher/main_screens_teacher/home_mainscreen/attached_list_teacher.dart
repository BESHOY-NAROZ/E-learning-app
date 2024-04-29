import 'package:assiut_project/core/app_constants/app_assets.dart';
import 'package:assiut_project/core/app_constants/app_colors.dart';
import 'package:assiut_project/core/app_constants/app_strings.dart';
import 'package:assiut_project/core/app_dimensions.dart';
import 'package:flutter/material.dart';

class AttachedList extends StatelessWidget {
  const AttachedList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context: context, designHeight: 778, designWidth: 360);
    return SizedBox(
      height: AppDimensions.getDimensions(requiredHeight: 57),
      child: ListView.builder(
        itemCount: 3,
        shrinkWrap: true,
        padding: EdgeInsets.zero,
        physics: const AlwaysScrollableScrollPhysics(),
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
              width: AppDimensions.getDimensions(requiredWidth: 211),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Row(children: [
                        Icon(
                          Icons.photo,
                          size: AppDimensions.defaultSize * 10,
                        ),
                        SizedBox(
                          width: AppDimensions.getDimensions(requiredWidth: 2),
                        ),
                        Icon(
                          Icons.play_circle_fill_rounded,
                          size: AppDimensions.defaultSize * 10,
                        ),
                        SizedBox(
                          width: AppDimensions.getDimensions(requiredWidth: 2),
                        ),
                        Icon(
                          Icons.file_copy_rounded,
                          size: AppDimensions.defaultSize * 10,
                        ),
                        SizedBox(
                          width: AppDimensions.getDimensions(requiredWidth: 20),
                        ),
                        Text(
                          AppStrings.kTransitionalElementsHome,
                          style: TextStyle(
                              fontFamily: 'Almarai',
                              color: AppColors.kSmallListFirstTextMainScreenHome,
                              fontWeight: FontWeight.w700,
                              fontSize: AppDimensions.defaultSize * 14),
                        ),
                      ]),
                      SizedBox(
                        height: AppDimensions.getDimensions(requiredHeight: 4),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          bottom: AppDimensions.getDimensions(requiredHeight: 1),
                        ),
                        child: Text(
                          AppStrings.kElementsLessonHome,
                          style: TextStyle(
                              fontFamily: 'Almarai',
                              color: AppColors.kSmallListSecondTextMainScreenHome,
                              fontWeight: FontWeight.w700,
                              fontSize: AppDimensions.defaultSize * 11),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: AppDimensions.getDimensions(requiredWidth: 4),
                  ),
                  SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 26),
                      width: AppDimensions.getDimensions(requiredWidth: 26),
                      child: Image.asset(AppAssets.kAttached)),
                  SizedBox(
                    width: AppDimensions.getDimensions(requiredWidth: 7),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
