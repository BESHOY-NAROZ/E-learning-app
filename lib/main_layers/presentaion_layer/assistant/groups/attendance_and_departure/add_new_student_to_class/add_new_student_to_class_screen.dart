import 'package:assiut_project/core/app_constants/app_strings.dart';
import 'package:assiut_project/core/app_dimensions.dart';
import 'package:assiut_project/main_layers/presentaion_layer/assistant/groups/shared_components_groups/hint_text_groups.dart';
import 'package:assiut_project/main_layers/presentaion_layer/assistant/groups/shared_components_groups/main_text_groups.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/custom_widgets/main_app_bar.dart';
import 'package:flutter/material.dart';

import 'add_new_student_to_class_ways_screen.dart';

class AddNewStudentToClass extends StatelessWidget {
  const AddNewStudentToClass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context: context, designHeight: 778, designWidth: 360);
    return Scaffold(
      body: Column(children: [
        const MainAppBar(
          designHeight: 1006,
          designWidth: 360,
          myTitle: AppStrings.kAttendanceAndDepartureAppBarGroups,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: AppDimensions.getDimensions(requiredWidth: 20)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SizedBox(
                height: AppDimensions.getDimensions(requiredHeight: 7),
              ),
              const MainTextGroups(
                myText: AppStrings.kStudentSignToClassGroups,
              ),
              SizedBox(
                height: AppDimensions.getDimensions(requiredHeight: 3),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  HintTextGroups(
                    myText: AppStrings.kBottomListGroupNumberHomeMainScreenHome,
                    fontWeight: FontWeight.w700,
                    fontSize: AppDimensions.defaultSize * 16,
                  ),
                  SizedBox(
                    width: AppDimensions.getDimensions(requiredWidth: 4),
                  ),
                  HintTextGroups(
                    myText: AppStrings.kBottomListFirstTextHomeMainScreenHome,
                    fontWeight: FontWeight.w700,
                    fontSize: AppDimensions.defaultSize * 16,
                  ),
                ],
              ),
              SizedBox(
                height: AppDimensions.getDimensions(requiredHeight: 45),
              ),
              const AddNewStudentToClassWays()
            ],
          ),
        )
      ]),
    );
  }
}
