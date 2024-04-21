import 'package:assiut_project/core/app_constants/app_strings.dart';
import 'package:assiut_project/core/app_dimensions.dart';
import 'package:assiut_project/main_layers/presentaion_layer/groups/shared_components_groups/hint_text_groups.dart';
import 'package:assiut_project/main_layers/presentaion_layer/groups/shared_components_groups/main_text_groups.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_app_bar.dart';
import 'package:flutter/material.dart';

import 'add_new_teacher_ways/add_new_teacher_ways_screen.dart';



class AddNewTeacher extends StatelessWidget {
  const AddNewTeacher({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context: context, designHeight: 778, designWidth: 360);
    return Scaffold(
      body: Column(children: [
        const MainAppBar(
          designHeight: 1006,
          designWidth: 360,
          myTitle: AppStrings.kAddTeacherAppBarTeachers,
        ),
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: AppDimensions.getDimensions(requiredWidth: 20)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SizedBox(
                height: AppDimensions.getDimensions(requiredHeight: 10),
              ),
              const MainTextGroups(
                myText: AppStrings.kAddTeacherAppBarTeachers,
              ),

              SizedBox(
                height: AppDimensions.getDimensions(requiredHeight: 55),
              ),
              const AddNewTeacherWays()
            ],
          ),
        )
      ]),
    );
  }
}
