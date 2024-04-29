import 'package:assiut_project/core/app_constants/app_assets.dart';
import 'package:assiut_project/core/app_constants/app_colors.dart';
import 'package:assiut_project/core/app_constants/app_strings.dart';
import 'package:assiut_project/core/app_dimensions.dart';
import 'package:assiut_project/core/app_routes.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_text_black.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_text_grey.dart';
import 'package:flutter/material.dart';

class RemoveStudentBottomSheetTeacher extends StatelessWidget {
  const RemoveStudentBottomSheetTeacher({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context: context, designHeight: 778, designWidth: 360);

    return InkWell(
      onTap: () {
        showModalBottomSheet(
          context: context,
          builder: (context) {
            return Container(
              width: AppDimensions.getDimensions(requiredWidth: 360),
              height: AppDimensions.getDimensions(requiredHeight: 220),
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                  color: AppColors.kMainTextWhite, borderRadius: BorderRadius.circular(20)),
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: AppDimensions.getDimensions(requiredWidth: 20),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    MainTextBlack(
                      myText: AppStrings.kMainDeleteStudent,
                      fontSize: AppDimensions.defaultSize * 18,
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 14),
                    ),
                    MainTextGrey(
                      myText: AppStrings.kHintDeleteStudent,
                      color: AppColors.kDetailsProfileEditing,
                      fontSize: AppDimensions.defaultSize * 14,
                      fontWeight: FontWeight.w400,
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 12),
                    ),
                    Container(
                      width: AppDimensions.getDimensions(requiredWidth: 360),
                      height: AppDimensions.getDimensions(requiredHeight: 50),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: AppColors.kBottomContainerMainScreenHome),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                AppStrings.kStudentNameGroups,
                                style: TextStyle(
                                    fontFamily: 'Almarai',
                                    color: AppColors.kSmallListFirstTextMainScreenHome,
                                    fontWeight: FontWeight.w700,
                                    fontSize: AppDimensions.defaultSize * 15),
                              ),
                              SizedBox(
                                height: AppDimensions.getDimensions(requiredHeight: 3),
                              ),
                              Text(
                                AppStrings.kStudentLevelGroups,
                                style: TextStyle(
                                    fontFamily: 'Almarai',
                                    color: AppColors.kSmallListFirstTextMainScreenHome,
                                    fontWeight: FontWeight.w400,
                                    fontSize: AppDimensions.defaultSize * 12),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: AppDimensions.getDimensions(requiredWidth: 12),
                          ),
                          Container(
                            width: AppDimensions.getDimensions(requiredWidth: 40),
                            height: AppDimensions.getDimensions(requiredHeight: 40),
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                            ),
                            child: Image.asset(AppAssets.kStudentGroupsScreen),
                          ),
                          SizedBox(
                            width: AppDimensions.getDimensions(requiredWidth: 20),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 12),
                    ),
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      Container(
                        height: AppDimensions.getDimensions(requiredHeight: 48),
                        width: AppDimensions.getDimensions(requiredWidth: 136),
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
                        child: MaterialButton(
                            color: AppColors.kMainScreenNewVersionButton,
                            shape: const RoundedRectangleBorder(),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text(
                              AppStrings.kBackDeleteStudent,
                              style: TextStyle(
                                  fontFamily: 'Almarai',
                                  color: AppColors.kMainScreenNewVersionButtonText,
                                  fontWeight: FontWeight.w700,
                                  fontSize: AppDimensions.defaultSize * 16),
                            )),
                      ),
                      SizedBox(
                        width: AppDimensions.getDimensions(requiredWidth: 10),
                      ),
                      Container(
                        height: AppDimensions.getDimensions(requiredHeight: 48),
                        width: AppDimensions.getDimensions(requiredWidth: 136),
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
                        child: MaterialButton(
                            color: AppColors.kMainButton,
                            shape: const RoundedRectangleBorder(),
                            onPressed: () {
                              Navigator.pushReplacementNamed(
                                  context, RoutesManager.removeStudentDone);
                            },
                            child: Text(
                              AppStrings.kActualDeleteStudent,
                              style: TextStyle(
                                  fontFamily: 'Almarai',
                                  color: AppColors.kMainTextWhite,
                                  fontWeight: FontWeight.w700,
                                  fontSize: AppDimensions.defaultSize * 16),
                            )),
                      ),
                      SizedBox(
                        width: AppDimensions.getDimensions(requiredWidth: 15),
                      )
                    ]),
                  ],
                ),
              ),
            );
          },
        );
      },
      child: SizedBox(
          width: AppDimensions.getDimensions(requiredWidth: 20),
          height: AppDimensions.getDimensions(requiredHeight: 22),
          child: Image.asset(
            AppAssets.kRemoveGroupsScreen,
            color: AppColors.kMainGeryD9,
          )),
    );
  }
}
