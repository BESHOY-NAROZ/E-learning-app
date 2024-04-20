import 'package:assiut_project/core/app_constants/app_assets.dart';
import 'package:assiut_project/core/app_constants/app_colors.dart';
import 'package:assiut_project/core/app_constants/app_strings.dart';
import 'package:assiut_project/core/app_dimensions.dart';
import 'package:assiut_project/core/app_routes.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_app_bar.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_bottom_navigaton_bar.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_button_grey.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_text_blue.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_text_grey.dart';
import 'package:flutter/material.dart';

class StudentProfile extends StatelessWidget {
  const StudentProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context: context, designHeight: 805, designWidth: 360);

    return Scaffold(
      bottomNavigationBar:  const MainBottomNavigationBar(
        designHeight: 1006,
        designWidth: 360,

      ),
      body: Column(
        children: [
          const MainAppBar(
            designHeight: 1006,
            designWidth: 360,
            myTitle: AppStrings.kAppBarTitleGroupsStudentGroups,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: AppDimensions.getDimensions(requiredWidth: 20)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: AppDimensions.getDimensions(requiredHeight: 30),
                ),
                Container(
                  height: AppDimensions.getDimensions(requiredHeight: 86),
                  width: AppDimensions.getDimensions(requiredHeight: 86),
                  decoration: const BoxDecoration(shape: BoxShape.circle),
                  child: Image.asset(AppAssets.kStudentGroupsScreen,
                      fit: BoxFit.fill),
                ),
                SizedBox(
                  height: AppDimensions.getDimensions(requiredHeight: 5),
                ),
                const Text(
                  AppStrings.kProfileStudentNameGroups,
                  style: TextStyle(
                      fontFamily: 'Almarai',
                      color: AppColors.kStudentNameGroups,
                      fontWeight: FontWeight.w700,
                      fontSize: 20),
                ),
                SizedBox(
                  height: AppDimensions.getDimensions(requiredHeight: 20),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const MainTextBlue(
                      myText: AppStrings.kPersonalDataGroups,
                      fontSize: 18,
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 15),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Column(
                          children: [
                            const MainTextGrey(
                              myText: AppStrings.kBirthDateGroups,
                              color: AppColors.kStudentNameGroups,
                            ),
                            SizedBox(
                              height: AppDimensions.getDimensions(
                                  requiredHeight: 3),
                            ),
                            const MainTextGrey(
                              myText: AppStrings.kActualBirthDateGroups,
                              color: AppColors.kStudentNameGroups,
                              fontSize: 12,
                            ),
                          ],
                        ),
                        SizedBox(
                          width: AppDimensions.getDimensions(requiredWidth: 80),
                        ),
                        Column(
                          children: [
                            const MainTextGrey(
                              myText: AppStrings.kEmailGroups,
                              color: AppColors.kStudentNameGroups,
                            ),
                            SizedBox(
                              height: AppDimensions.getDimensions(
                                  requiredHeight: 3),
                            ),
                            const MainTextGrey(
                              myText: AppStrings.kActualEmailGroups,
                              color: AppColors.kStudentNameGroups,
                              fontSize: 12,
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 10),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Column(
                          children: [
                            const MainTextGrey(
                              myText: AppStrings.kGenderGroups,
                              color: AppColors.kStudentNameGroups,
                            ),
                            SizedBox(
                              height: AppDimensions.getDimensions(
                                  requiredHeight: 3),
                            ),
                            const MainTextGrey(
                              myText: AppStrings.kActualGenderGroups,
                              color: AppColors.kStudentNameGroups,
                              fontSize: 12,
                            ),
                            SizedBox(
                              width: AppDimensions.getDimensions(
                                  requiredWidth: 80),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: AppDimensions.getDimensions(requiredWidth: 90),
                        ),
                        Column(
                          children: [
                            const MainTextGrey(
                              myText: AppStrings.kPhoneNumberGroups,
                              color: AppColors.kStudentNameGroups,
                            ),
                            SizedBox(
                              height: AppDimensions.getDimensions(
                                  requiredHeight: 3),
                            ),
                            const MainTextGrey(
                              myText: AppStrings.kActualPhoneNumberGroups,
                              color: AppColors.kStudentNameGroups,
                              fontSize: 12,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: AppDimensions.getDimensions(requiredHeight: 20),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const MainTextBlue(
                      myText: AppStrings.kEducationalDataGroups,
                      fontSize: 18,
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 15),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Column(
                          children: [
                            const MainTextGrey(
                              myText: AppStrings.kEducationTypeGroups,
                              color: AppColors.kStudentNameGroups,
                            ),
                            SizedBox(
                              height: AppDimensions.getDimensions(
                                  requiredHeight: 3),
                            ),
                            const MainTextGrey(
                              myText: AppStrings.kActualEducationTypeGroups,
                              color: AppColors.kStudentNameGroups,
                              fontSize: 12,
                            ),
                          ],
                        ),
                        SizedBox(
                          width:
                              AppDimensions.getDimensions(requiredWidth: 130),
                        ),
                        Column(
                          children: [
                            const MainTextGrey(
                              myText: AppStrings.kSectionTypeGroups,
                              color: AppColors.kStudentNameGroups,
                            ),
                            SizedBox(
                              height: AppDimensions.getDimensions(
                                  requiredHeight: 3),
                            ),
                            const MainTextGrey(
                              myText: AppStrings.kActualSectionTypeGroups,
                              color: AppColors.kStudentNameGroups,
                              fontSize: 12,
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 10),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Column(
                          children: [
                            const MainTextGrey(
                              myText: AppStrings.kClassRoomGroups,
                              color: AppColors.kStudentNameGroups,
                            ),
                            SizedBox(
                              height: AppDimensions.getDimensions(
                                  requiredHeight: 3),
                            ),
                            const MainTextGrey(
                              myText: AppStrings.kActualClassRoomGroups,
                              color: AppColors.kStudentNameGroups,
                              fontSize: 12,
                            ),
                          ],
                        ),
                        SizedBox(
                          width: AppDimensions.getDimensions(requiredWidth: 75),
                        ),
                        Column(
                          children: [
                            const MainTextGrey(
                              myText: AppStrings.kEducationalLevelGroups,
                              color: AppColors.kStudentNameGroups,
                            ),
                            SizedBox(
                              height: AppDimensions.getDimensions(
                                  requiredHeight: 3),
                            ),
                            const MainTextGrey(
                              myText: AppStrings.kActualEducationalLevelGroups,
                              color: AppColors.kStudentNameGroups,
                              fontSize: 12,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: AppDimensions.getDimensions(requiredHeight: 100),
                ),
                MainButtonGrey(
                  buttonName: AppStrings.kStatisticsButtonGroups,
                  onPressed: () {
                    Navigator.pushNamed(context, RoutesManager.studentStatistics);

                  },
                ),

              ],
            ),
          )
        ],
      ),
    );
  }
}
// SizedBox(
//                   height: AppDimensions.getDimensions(requiredHeight: 3),
//                 ),
