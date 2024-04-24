import 'package:assiut_project/core/app_constants/app_strings.dart';
import 'package:assiut_project/core/app_dimensions.dart';
import 'package:assiut_project/main_layers/presentaion_layer/assistant/groups/shared_components_groups/main_text_groups.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_app_bar.dart';
import 'package:assiut_project/main_layers/presentaion_layer/teacher/assistant_of_teacher/add_new_assistant_teacher/add_new_assistant_ways_screen.dart';
import 'package:flutter/material.dart';

class AddNewAssistantOfTeacher extends StatelessWidget {
  const AddNewAssistantOfTeacher({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context: context, designHeight: 778, designWidth: 360);
    return Scaffold(
      body: Column(children: [
        const MainAppBar(
          designHeight: 1006,
          designWidth: 360,
          myTitle: AppStrings.kAddNewAssistantAssistantOfTeacher,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: AppDimensions.getDimensions(requiredWidth: 20)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SizedBox(
                height: AppDimensions.getDimensions(requiredHeight: 22),
              ),
              const MainTextGroups(
                myText: AppStrings.kAddNewAssistantNowAssistantOfTeacher,
              ),
              SizedBox(
                height: AppDimensions.getDimensions(requiredHeight: 64),
              ),
              const AddNewAssistantWays()
            ],
          ),
        )
      ]),
    );
  }
}
