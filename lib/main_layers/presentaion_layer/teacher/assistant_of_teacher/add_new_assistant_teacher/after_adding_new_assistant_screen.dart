import 'package:assiut_project/core/app_constants/app_assets.dart';
import 'package:assiut_project/core/app_constants/app_colors.dart';
import 'package:assiut_project/core/app_constants/app_strings.dart';
import 'package:assiut_project/core/app_dimensions.dart';
import 'package:assiut_project/core/app_routes.dart';
import 'package:assiut_project/main_layers/presentaion_layer/assistant/groups/shared_components_groups/main_text_groups.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/custom_widgets/main_app_bar.dart';
import 'package:flutter/material.dart';

class AfterAddingNewAssistantOfTeacher extends StatelessWidget {
  const AfterAddingNewAssistantOfTeacher({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context: context, designHeight: 778, designWidth: 360);

    return Scaffold(
      body: Column(
        children: [
          const MainAppBar(
            designHeight: 1006,
            designWidth: 360,
            myTitle: AppStrings.kAddNewAssistantAssistantOfTeacher,
          ),
          Padding(
            padding:
                EdgeInsets.symmetric(horizontal: AppDimensions.getDimensions(requiredWidth: 20)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SizedBox(
                  height: AppDimensions.getDimensions(requiredHeight: 20),
                ),
                const MainTextGroups(
                  myText: AppStrings.kAddNewAssistantNowAssistantOfTeacher,
                ),
                SizedBox(
                  height: AppDimensions.getDimensions(requiredHeight: 90),
                ),
                Center(
                  child: Container(
                    height: AppDimensions.getDimensions(requiredHeight: 310),
                    width: AppDimensions.getDimensions(requiredWidth: 310),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(9),
                      color: AppColors.kAppBarLoginTitle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: const Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: AppDimensions.getDimensions(requiredHeight: 30),
                        ),
                        Container(
                          width: AppDimensions.getDimensions(requiredWidth: 105),
                          height: AppDimensions.getDimensions(requiredHeight: 105),
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                          ),
                          child: Image.asset(AppAssets.kStudentGroupsScreen),
                        ),
                        SizedBox(
                          height: AppDimensions.getDimensions(requiredHeight: 20),
                        ),
                        Text(
                          AppStrings.kStudentNameGroups,
                          style: TextStyle(
                              fontFamily: 'Almarai',
                              color: AppColors.kAfterQRGroups,
                              fontWeight: FontWeight.w700,
                              fontSize: AppDimensions.defaultSize * 15),
                        ),
                        SizedBox(
                          height: AppDimensions.getDimensions(requiredHeight: 15),
                        ),
                        Text(
                          AppStrings.kStudentNumberGroups,
                          style: TextStyle(
                              fontFamily: 'Almarai',
                              color: AppColors.kAfterQRGroups,
                              fontWeight: FontWeight.w400,
                              fontSize: AppDimensions.defaultSize * 12),
                        ),
                        SizedBox(
                          height: AppDimensions.getDimensions(requiredHeight: 30),
                        ),
                        Container(
                          height: AppDimensions.getDimensions(requiredHeight: 45),
                          width: AppDimensions.getDimensions(requiredWidth: 283),
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
                          child: MaterialButton(
                              color: AppColors.kMainButton,
                              shape: const RoundedRectangleBorder(),
                              onPressed: () {
                                Navigator.pushNamed(
                                    context, RoutesManager.addNewAssistantDoneTeacher);
                              },
                              child: Text(
                                AppStrings.kAddButtonAssistantOfTeacher,
                                style: TextStyle(
                                    fontFamily: 'Almarai',
                                    color: AppColors.kMainTextWhite,
                                    fontWeight: FontWeight.w700,
                                    fontSize: AppDimensions.defaultSize * 16),
                              )),
                        )
                      ],
                    ),
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
