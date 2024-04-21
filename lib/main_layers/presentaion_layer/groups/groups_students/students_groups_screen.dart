import 'package:assiut_project/core/app_constants/app_assets.dart';
import 'package:assiut_project/core/app_constants/app_colors.dart';
import 'package:assiut_project/core/app_constants/app_strings.dart';
import 'package:assiut_project/core/app_dimensions.dart';
import 'package:assiut_project/core/app_routes.dart';
import 'package:assiut_project/main_layers/presentaion_layer/groups/shared_components_groups/main_text_groups.dart';
import 'package:assiut_project/main_layers/presentaion_layer/groups/groups_students/students_groups_list_groups.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_app_bar.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_button_grey.dart';
import 'package:flutter/material.dart';

class StudentGroups extends StatelessWidget {
  const StudentGroups({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context: context, designHeight: 778, designWidth: 360);
    return Scaffold(
        // bottomNavigationBar:  const MainBottomNavigationBar(
        //   designHeight: 1006,
        //   designWidth: 360,
        // ),
        body: Column(
          children: [
            const MainAppBar(
              designHeight: 1006,
              designWidth: 360,
              myTitle: AppStrings.kAppBarTitleGroupsStudentGroups,
            ),
            Padding(
              padding: EdgeInsets.only(
                  right: AppDimensions.getDimensions(requiredWidth: 20),
                  left: AppDimensions.getDimensions(requiredWidth: 20)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SizedBox(
                    height: AppDimensions.getDimensions(requiredHeight: 7),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        right: AppDimensions.getDimensions(requiredWidth: 10)),
                    child: const MainTextGroups(
                      myText: AppStrings.kAppBarTitleGroupsStudentGroups,
                    ),
                  ),
                  SizedBox(
                    height: AppDimensions.getDimensions(requiredHeight: 28),
                  ),
                  SizedBox(
                    height: AppDimensions.getDimensions(requiredHeight: 400),
                    child: ListView.builder(
                      padding: EdgeInsets.zero,
                      itemCount: 2,
                      scrollDirection: Axis.vertical,
                      itemBuilder: (context, index) {
                        return InkWell(
                            onTap: () {
                              Navigator.pushNamed(context, RoutesManager.groupDetails);
                            },
                            child: const StudentsGroupsListGroups());
                      },
                    ),
                  ),
                  SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 51)),
                  MainButtonGrey(
                    buttonName: AppStrings.kButtonTextGroupsStudentGroups,
                    onPressed: () {
                      Navigator.pushNamed(context, RoutesManager.createGroup);

                    },
                  )
                ],
              ),
            )
          ],
        ));
  }
}
