import 'package:assiut_project/core/app_constants/app_colors.dart';
import 'package:assiut_project/core/app_constants/app_strings.dart';
import 'package:assiut_project/core/app_dimensions.dart';
import 'package:assiut_project/core/app_routes.dart';
import 'package:assiut_project/main_layers/presentaion_layer/groups/shared_components_groups/hint_text_groups.dart';
import 'package:assiut_project/main_layers/presentaion_layer/groups/shared_components_groups/main_result_container.dart';
import 'package:assiut_project/main_layers/presentaion_layer/groups/shared_components_groups/main_text_groups.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_app_bar.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_bottom_navigaton_bar.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_button_grey.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_text_black.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_text_green.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_text_grey.dart';
import 'package:flutter/material.dart';

class WhoAttended extends StatelessWidget {
  const WhoAttended({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context: context, designHeight: 778, designWidth: 360);
    return Scaffold(
      bottomNavigationBar:  const MainBottomNavigationBar(
        designHeight: 1006,
        designWidth: 360,
      ),
      body: Column(
        children: [
          const MainAppBar(
            designHeight: 1006,
            designWidth: 360,
            myTitle: AppStrings.kAttendanceAndDepartureAppBarGroups,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: AppDimensions.getDimensions(requiredWidth: 20)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SizedBox(
                  height: AppDimensions.getDimensions(requiredHeight: 7),
                ),
                const MainTextGroups(
                  myText: AppStrings.kFirstSessionGroups,
                ),
                SizedBox(
                  height: AppDimensions.getDimensions(requiredHeight: 3),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const HintTextGroups(
                      myText:
                          AppStrings.kBottomListGroupNumberHomeMainScreenHome,
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                    ),
                    SizedBox(
                      width: AppDimensions.getDimensions(requiredWidth: 4),
                    ),
                    const HintTextGroups(
                      myText: AppStrings.kBottomListFirstTextHomeMainScreenHome,
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                    ),
                  ],
                ),
                SizedBox(
                  height: AppDimensions.getDimensions(requiredHeight: 25),
                ),
                SizedBox(
                  height: AppDimensions.getDimensions(requiredHeight: 520),
                  child: ListView.separated(
                      padding: EdgeInsets.zero,
                      itemBuilder: (context, index) {
                        return Container(
                          padding: EdgeInsets.zero,
                          height:
                              AppDimensions.getDimensions(requiredHeight: 80),
                          width:
                              AppDimensions.getDimensions(requiredWidth: 320),
                          decoration: BoxDecoration(
                              color: AppColors.kSentExamsContainerGroups,
                              borderRadius: BorderRadius.circular(8)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const MainTextGreen(
                                    myText: AppStrings.kAttendedGroups,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                  ),
                                  SizedBox(
                                    height: AppDimensions.getDimensions(
                                        requiredHeight: 3),
                                  ),
                                  const MainTextGrey(
                                    myText: AppStrings.kAttendedTimeGroups,
                                    fontSize: 12,
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: AppDimensions.getDimensions(
                                    requiredWidth: 80),
                              ),
                              const MainTextBlack(
                                myText: AppStrings.kProfileStudentNameGroups,
                                fontSize: 16,
                              ),
                              SizedBox(
                                width: AppDimensions.getDimensions(
                                    requiredWidth: 8),
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
                        );
                      },
                      separatorBuilder: (context, index) {
                        return SizedBox(
                          height:
                              AppDimensions.getDimensions(requiredHeight: 9),
                        );
                      },
                      itemCount: 9),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
