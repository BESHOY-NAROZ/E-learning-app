import 'package:assiut_project/core/app_constants/app_strings.dart';
import 'package:assiut_project/core/app_dimensions.dart';
import 'package:assiut_project/core/app_routes.dart';
import 'package:assiut_project/main_layers/presentaion_layer/groups/create_group/every_student_in_group.dart';
import 'package:assiut_project/main_layers/presentaion_layer/groups/group_statistics/group_statistics_screen.dart';
import 'package:assiut_project/main_layers/presentaion_layer/groups/sent_exams/sent_exams_screen.dart';
import 'package:assiut_project/main_layers/presentaion_layer/groups/sent_exams/sent_exams_screen.dart';
import 'package:assiut_project/main_layers/presentaion_layer/groups/shared_components_groups/app_bar_groups.dart';
import 'package:assiut_project/main_layers/presentaion_layer/groups/create_group/more_row_groups.dart';
import 'package:assiut_project/main_layers/presentaion_layer/groups/shared_components_groups/main_grey_button.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_bottom_navigaton_bar.dart';
import 'package:flutter/material.dart';

class CreateGroup extends StatelessWidget {
  const CreateGroup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context: context, designHeight: 778, designWidth: 360);
    return Scaffold(
      bottomNavigationBar: const MainBottomNavigationBar(
        designHeight: 1006,
        designWidth: 360,
      ),
      body: Column(
        children: [
          const AppBarGroups(
            designHeight: 1006,
            designWidth: 360,
            myTitle: AppStrings.kAppBarTitleGroupsStudentGroups,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: AppDimensions.getDimensions(requiredWidth: 20)),
            child: Column(
              children: [
                SizedBox(
                  height: AppDimensions.getDimensions(requiredHeight: 25),
                ),
                const MoreRowGroups(

                ),
                SizedBox(
                  height: AppDimensions.getDimensions(requiredHeight: 27),
                ),
                SizedBox(
                  height: AppDimensions.getDimensions(
                      requiredHeight: 280),
                  child: ListView.builder(
                    padding: EdgeInsets.zero,
                    itemCount: 3,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context, index) {
                      return const EveryStudentInGroupList();
                    },
                  ),
                ),
                SizedBox(
                  height: AppDimensions.getDimensions(
                      requiredHeight: 59),
                ),
                MainGreyButton(
                  buttonName: AppStrings.kGroupStatisticsButtonGroups,
                  onPressed: () {
                    Navigator.pushNamed(context, RoutesManager.groupStatistics);
                  },
                ),
               SizedBox(height: AppDimensions.getDimensions(requiredHeight: 11))
               , MainGreyButton(
                  buttonName: AppStrings.kSentExamsGroups,
                  onPressed: (){

                      Navigator.pushNamed(context, RoutesManager.sentExams);
                  },
                )
,                SizedBox(height: AppDimensions.getDimensions(requiredHeight:
                11))

                ,MainGreyButton(
                  buttonName: AppStrings.kAttendanceAndDepartureGroups,
                  onPressed: (){},
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
