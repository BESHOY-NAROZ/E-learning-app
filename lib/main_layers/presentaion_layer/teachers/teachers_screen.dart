import 'package:assiut_project/core/app_constants/app_assets.dart';
import 'package:assiut_project/core/app_constants/app_colors.dart';
import 'package:assiut_project/core/app_constants/app_strings.dart';
import 'package:assiut_project/core/app_dimensions.dart';
import 'package:assiut_project/core/app_routes.dart';
import 'package:assiut_project/main_layers/presentaion_layer/main_screens/shared_components_mainscreen/app_bar_mainscreen.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_add_small_button.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_app_bar.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_bottom_navigaton_bar.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_text_black.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_text_grey.dart';
import 'package:flutter/material.dart';

import 'teachers_list/teachers_list_screen.dart';

class Teachers extends StatelessWidget {
  const Teachers({Key? key}) : super(key: key);

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
          const MainAppBar(
            designHeight: 1006,
            designWidth: 360,
            myTitle: AppStrings.kTeachers,
          ),
          SizedBox(
            height: AppDimensions.getDimensions(requiredHeight: 21),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const MainTextBlack(
                  myText: AppStrings.kTeachersMenu,
                  fontSize: 16,
                ),
                SizedBox(
                  height: AppDimensions.getDimensions(requiredHeight: 5),
                ),
                const MainTextGrey(
                  myText: AppStrings.kHintTeachers,
                  color: AppColors.kHintTeachers,
                  fontSize: 12,
                ),
                SizedBox(
                  height: AppDimensions.getDimensions(requiredHeight: 25),
                ),
                SizedBox(
                  height: AppDimensions.getDimensions(requiredHeight: 450),
                  child: ListView.separated(
                      padding: EdgeInsets.zero,
                      itemBuilder: (context, index) {
                        return const TeachersList();
                      },
                      separatorBuilder: (context, index) {
                        return SizedBox(
                          height:
                              AppDimensions.getDimensions(requiredHeight: 8),
                        );
                      },
                      itemCount: 7),
                ),
                SizedBox(
                  height: AppDimensions.getDimensions(requiredHeight: 17),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: MainAddSmallButton(
                    myText: AppStrings.kAddTeacherTeachers,
                    requiredWidth: 126,
                    onPressed: () {
                      Navigator.pushNamed(context, RoutesManager.addNewTeacher);
                    },
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
