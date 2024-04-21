import 'package:assiut_project/core/app_constants/app_strings.dart';
import 'package:assiut_project/core/app_dimensions.dart';
import 'package:assiut_project/core/app_routes.dart';
import 'package:assiut_project/main_layers/presentaion_layer/groups/group_statistics/test_statistics_list.dart';
import 'package:assiut_project/main_layers/presentaion_layer/groups/shared_components_groups/hint_text_groups.dart';
import 'package:assiut_project/main_layers/presentaion_layer/groups/shared_components_groups/main_result_container.dart';
import 'package:assiut_project/main_layers/presentaion_layer/groups/shared_components_groups/main_text_groups.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_app_bar.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_button_grey.dart';
import 'package:flutter/material.dart';

class AttendanceAndDeparture extends StatelessWidget {
  const AttendanceAndDeparture({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context: context, designHeight: 778, designWidth: 360);
    return Scaffold(
      // bottomNavigationBar:  const MainBottomNavigationBar(
      //   designHeight: 1006,
      //   designWidth: 360,
      //
      // ),
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
                  myText: AppStrings.kAttendanceAndDepartureMainTextGroups,
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
                  height: AppDimensions.getDimensions(requiredHeight: 465),
                  child: ListView.separated(
                      padding: EdgeInsets.zero,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            Navigator.pushNamed(
                                context, RoutesManager.whoAttended);
                          },
                          child: const MainResultContainer(
                            widthSpacer: 100,
                            topLeftText: AppStrings.kStudentAttendanceGroups,
                            bottomLeftText:
                                AppStrings.kActualStudentAttendanceGroups,
                            topRightText: AppStrings.kFirstSessionGroups,
                            bottomRightText: AppStrings.kBiologyGroups,
                          ),
                        );
                      },
                      separatorBuilder: (context, index) {
                        return SizedBox(
                          height:
                              AppDimensions.getDimensions(requiredHeight: 9),
                        );
                      },
                      itemCount: 6),
                ),
                SizedBox(
                  height: AppDimensions.getDimensions(requiredHeight: 10),
                ),
                MainButtonGrey(
                  buttonName: AppStrings.kNewLessonGroups,
                  onPressed: () {
                    Navigator.pushNamed(
                        context, RoutesManager.addNewClass);
                  },
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
