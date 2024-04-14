import 'package:assiut_project/core/app_constants/app_strings.dart';
import 'package:assiut_project/core/app_dimensions.dart';
import 'package:assiut_project/main_layers/presentaion_layer/groups/attendance_and_departure/add_new_class_ways/add_new_class_ways_screen.dart';
import 'package:assiut_project/main_layers/presentaion_layer/groups/shared_components_groups/hint_text_groups.dart';
import 'package:assiut_project/main_layers/presentaion_layer/groups/shared_components_groups/main_text_groups.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_app_bar.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_bottom_navigaton_bar.dart';
import 'package:flutter/material.dart';


class AddNewClass extends StatelessWidget {
  const AddNewClass({Key? key}) : super(key: key);

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
          padding: EdgeInsets.symmetric(
              horizontal: AppDimensions.getDimensions(requiredWidth: 20)),
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
                  const HintTextGroups(
                    myText: AppStrings.kBottomListGroupNumberHomeMainScreenHome,
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
                height: AppDimensions.getDimensions(requiredHeight: 45),
              ),
              const AddNewClassWays()
            ],
          ),
        )
      ]),
    );
  }
}
