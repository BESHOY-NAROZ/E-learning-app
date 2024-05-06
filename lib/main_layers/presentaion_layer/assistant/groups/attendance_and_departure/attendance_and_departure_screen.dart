import 'package:assiut_project/core/app_constants/app_strings.dart';
import 'package:assiut_project/core/app_dimensions.dart';
import 'package:assiut_project/core/app_routes.dart';
import 'package:assiut_project/main_layers/presentaion_layer/assistant/groups/shared_components_groups/hint_text_groups.dart';
import 'package:assiut_project/main_layers/presentaion_layer/assistant/groups/shared_components_groups/main_result_container.dart';
import 'package:assiut_project/main_layers/presentaion_layer/assistant/groups/shared_components_groups/main_text_groups.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/custom_widgets/main_app_bar.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/custom_widgets/main_button_grey.dart';
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
          Expanded(
            child: Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: AppDimensions.getDimensions(requiredWidth: 20)),
              child: SingleChildScrollView(
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
                      height: AppDimensions.getDimensions(requiredHeight: 25),
                    ),
                    ListView.separated(
                        shrinkWrap: true,
                        physics: BouncingScrollPhysics(),
                        padding: EdgeInsets.zero,
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: () {
                              Navigator.pushNamed(context, RoutesManager.whoAttended);
                            },
                            child: const MainResultContainer(
                              widthSpacer: 100,
                              topLeftText: AppStrings.kStudentAttendanceGroups,
                              bottomLeftText: AppStrings.kActualStudentAttendanceGroups,
                              topRightText: AppStrings.kFirstSessionGroups,
                              bottomRightText: AppStrings.kBiologyGroups,
                            ),
                          );
                        },
                        separatorBuilder: (context, index) {
                          return SizedBox(
                            height: AppDimensions.getDimensions(requiredHeight: 9),
                          );
                        },
                        itemCount: 6),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 20),
                    ),
                    MainButtonGrey(
                      buttonName: AppStrings.kNewLessonGroups,
                      onPressed: () {
                        Navigator.pushNamed(context, RoutesManager.addNewClassAssistant);
                      },
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
