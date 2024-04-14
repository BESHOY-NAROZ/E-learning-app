import 'package:assiut_project/core/app_constants/app_assets.dart';
import 'package:assiut_project/core/app_constants/app_colors.dart';
import 'package:assiut_project/core/app_constants/app_strings.dart';
import 'package:assiut_project/core/app_dimensions.dart';
import 'package:assiut_project/core/app_routes.dart';
import 'package:assiut_project/main_layers/presentaion_layer/groups/shared_components_groups/hint_text_groups.dart';
import 'package:assiut_project/main_layers/presentaion_layer/groups/shared_components_groups/main_text_groups.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_app_bar.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_button_red.dart';
import 'package:flutter/material.dart';

class AfterScan extends StatelessWidget {
  const AfterScan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context: context, designHeight: 778, designWidth: 360);

    return Scaffold(
      body: Column(
        children: [
          const MainAppBar(
            designHeight: 1006,
            designWidth: 360,
            myTitle: AppStrings.kAddNewStudentGroups,
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
                  myText: AppStrings.kAddNewStudentGroups,
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
                )
                ,const HintTextGroups(
                  myText: AppStrings.kScanTextGroups,
                  fontSize: 12,
                  fontWeight: FontWeight.w700,
                ),
                SizedBox(
                  height: AppDimensions.getDimensions(requiredHeight: 45),
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
                        SizedBox(height: AppDimensions.getDimensions
                          (requiredHeight: 30),),
                        Container(
                          width: AppDimensions.getDimensions(requiredWidth:
                          105),
                          height: AppDimensions.getDimensions(requiredHeight:
                          105),
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                          ),
                          child: Image.asset(AppAssets.kStudentGroupsScreen),

                        ),
                        SizedBox(
                          height: AppDimensions.getDimensions(requiredHeight:
                          20),
                        ),
                        const Text(
                          AppStrings.kStudentNameGroups,
                          style: TextStyle(
                              fontFamily: 'Almarai',
                              color: AppColors.kAfterQRGroups,
                              fontWeight: FontWeight.w700,
                              fontSize: 15),
                        ),
                        SizedBox(
                          height: AppDimensions.getDimensions(requiredHeight:
                          15),
                        ),
                        const Text(
                          AppStrings.kStudentLevelGroups,
                          style: TextStyle(
                              fontFamily: 'Almarai',
                              color: AppColors.kAfterQRGroups,
                              fontWeight: FontWeight.w400,
                              fontSize: 12),
                        ),
                        SizedBox(
                          height: AppDimensions.getDimensions(requiredHeight:
                          15),
                        ),
                        const Text(
                          AppStrings.kStudentNumberGroups,
                          style: TextStyle(
                              fontFamily: 'Almarai',
                              color: AppColors.kAfterQRGroups,
                              fontWeight: FontWeight.w400,
                              fontSize: 12),
                        ),
                  SizedBox(
                    height: AppDimensions.getDimensions(requiredHeight:
                    15),
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
                          Navigator.pushNamed(context, RoutesManager
                              .addNewStudentDone);

                        },
                        child: const Text(AppStrings.kAddButtonGroups,
                          style: TextStyle(
                              fontFamily: 'Almarai',
                              color: AppColors.kMainButtonText,
                              fontWeight: FontWeight.w700,
                              fontSize: 16),
                        )
                    ),
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
