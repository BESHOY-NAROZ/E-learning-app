import 'package:assiut_project/core/app_constants/app_assets.dart';
import 'package:assiut_project/core/app_constants/app_colors.dart';
import 'package:assiut_project/core/app_constants/app_strings.dart';
import 'package:assiut_project/core/app_dimensions.dart';
import 'package:flutter/material.dart';

class FourButtonsGroups extends StatelessWidget {
  const FourButtonsGroups({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context: context, designHeight: 778, designWidth: 360);
    return Column(
      children: [
        Row(
          children: [
            Container(
                width: AppDimensions.getDimensions(requiredWidth: 153),
                height: AppDimensions.getDimensions(requiredHeight: 40),
                padding: const EdgeInsets.all(0),
                decoration: BoxDecoration(
                  color: AppColors.kSmallButtonMainScreenHome,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: IconButton(
                  onPressed: () {},
                  padding: const EdgeInsets.all(0),
                  icon: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        AppStrings.kSentExamsExamsGroups,
                        style: TextStyle(
                            fontFamily: 'Almarai',
                            color: AppColors.kMainGery7A,
                            fontWeight: FontWeight.w700,
                            fontSize: AppDimensions.defaultSize * 10),
                      ),
                      SizedBox(
                        width: AppDimensions.getDimensions(requiredWidth: 3),
                      ),
                      Image.asset(
                        AppAssets.kExamVector,
                        height: AppDimensions.getDimensions(requiredHeight: 22),
                        width: AppDimensions.getDimensions(requiredWidth: 22),
                      ),
                    ],
                  ),
                )),
            const Spacer(),
            Container(
                width: AppDimensions.getDimensions(requiredWidth: 153),
                height: AppDimensions.getDimensions(requiredHeight: 40),
                padding: const EdgeInsets.all(0),
                decoration: BoxDecoration(
                  color: AppColors.kSmallButtonMainScreenHome,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: IconButton(
                  onPressed: () {},
                  padding: const EdgeInsets.all(0),
                  icon: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        AppStrings.kGroupsStaticsGroups,
                        style: TextStyle(
                            fontFamily: 'Almarai',
                            color: AppColors.kMainGery7A,
                            fontWeight: FontWeight.w700,
                            fontSize: AppDimensions.defaultSize * 10),
                      ),
                      SizedBox(
                        width: AppDimensions.getDimensions(requiredWidth: 3),
                      ),
                      Image.asset(
                        AppAssets.kChart,
                        height: AppDimensions.getDimensions(requiredHeight: 22),
                        width: AppDimensions.getDimensions(requiredWidth: 22),
                      ),
                    ],
                  ),
                )),
          ],
        ),
        SizedBox(
          height: AppDimensions.getDimensions(requiredHeight: 15),
        ),
        Row(
          children: [
            Container(
                width: AppDimensions.getDimensions(requiredWidth: 153),
                height: AppDimensions.getDimensions(requiredHeight: 40),
                padding: const EdgeInsets.all(0),
                decoration: BoxDecoration(
                  color: AppColors.kSmallButtonMainScreenHome,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: IconButton(
                  onPressed: () {},
                  padding: const EdgeInsets.all(0),
                  icon: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        AppStrings.kAddNewStudentsGroups,
                        style: TextStyle(
                            fontFamily: 'Almarai',
                            color: AppColors.kMainGery7A,
                            fontWeight: FontWeight.w700,
                            fontSize: AppDimensions.defaultSize * 10),
                      ),
                      SizedBox(
                        width: AppDimensions.getDimensions(requiredWidth: 3),
                      ),
                      Image.asset(
                        AppAssets.kAdd,
                        height: AppDimensions.getDimensions(requiredHeight: 22),
                        width: AppDimensions.getDimensions(requiredWidth: 22),
                      ),
                    ],
                  ),
                )),
            const Spacer(),
            Container(
                width: AppDimensions.getDimensions(requiredWidth: 153),
                height: AppDimensions.getDimensions(requiredHeight: 40),
                padding: const EdgeInsets.all(0),
                decoration: BoxDecoration(
                  color: AppColors.kSmallButtonMainScreenHome,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: IconButton(
                  onPressed: () {},
                  padding: const EdgeInsets.all(0),
                  icon: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        AppStrings.kSentAttachmentsGroups,
                        style: TextStyle(
                            fontFamily: 'Almarai',
                            color: AppColors.kMainGery7A,
                            fontWeight: FontWeight.w700,
                            fontSize: AppDimensions.defaultSize * 10),
                      ),
                      SizedBox(
                        width: AppDimensions.getDimensions(requiredWidth: 3),
                      ),
                      Image.asset(
                        AppAssets.kPlay,
                        height: AppDimensions.getDimensions(requiredHeight: 22),
                        width: AppDimensions.getDimensions(requiredWidth: 22),
                      ),
                    ],
                  ),
                )),
          ],
        ),
      ],
    );
  }
}
