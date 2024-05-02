import 'package:assiut_project/core/app_constants/app_assets.dart';
import 'package:assiut_project/core/app_constants/app_colors.dart';
import 'package:assiut_project/core/app_constants/app_strings.dart';
import 'package:assiut_project/core/app_dimensions.dart';
import 'package:assiut_project/core/app_routes.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/custom_widgets/main_app_bar.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/custom_widgets/main_button_grey.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/custom_widgets/main_text_black.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/custom_widgets/main_text_blue.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/custom_widgets/main_text_grey.dart';
import 'package:flutter/material.dart';

class StudentProfileTeacher extends StatelessWidget {
  const StudentProfileTeacher({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context: context, designHeight: 805, designWidth: 360);

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
            myTitle: AppStrings.kAppBarTitleGroupsStudentGroups,
          ),
          Expanded(
            child: Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: AppDimensions.getDimensions(requiredWidth: 20)),
              child: SingleChildScrollView(
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
                      child: Image.asset(AppAssets.kStudentGroupsScreen, fit: BoxFit.fill),
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 5),
                    ),
                    Text(
                      AppStrings.kProfileStudentNameGroups,
                      style: TextStyle(
                          fontFamily: 'Almarai',
                          color: AppColors.kStudentNameGroups,
                          fontWeight: FontWeight.w700,
                          fontSize: AppDimensions.defaultSize * 20),
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 20),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Column(
                              children: [
                                const MainTextGrey(
                                  myText: AppStrings.kPhoneNumberGroups,
                                  color: AppColors.kStudentNameGroups,
                                ),
                                SizedBox(
                                  height: AppDimensions.getDimensions(requiredHeight: 3),
                                ),
                                MainTextGrey(
                                  myText: AppStrings.kActualPhoneNumberGroups,
                                  color: AppColors.kStudentNameGroups,
                                  fontSize: AppDimensions.defaultSize * 12,
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
                                  height: AppDimensions.getDimensions(requiredHeight: 3),
                                ),
                                MainTextGrey(
                                  myText: AppStrings.kActualEmailGroups,
                                  color: AppColors.kStudentNameGroups,
                                  fontSize: AppDimensions.defaultSize * 12,
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: AppDimensions.getDimensions(requiredHeight: 16),
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
                                  height: AppDimensions.getDimensions(requiredHeight: 3),
                                ),
                                MainTextGrey(
                                  myText: AppStrings.kActualClassRoomGroups,
                                  color: AppColors.kStudentNameGroups,
                                  fontSize: AppDimensions.defaultSize * 12,
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
                                  height: AppDimensions.getDimensions(requiredHeight: 3),
                                ),
                                MainTextGrey(
                                  myText: AppStrings.kActualEducationalLevelGroups,
                                  color: AppColors.kStudentNameGroups,
                                  fontSize: AppDimensions.defaultSize * 12,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 12),
                    ),
                    Container(
                      height: AppDimensions.getDimensions(requiredHeight: 81),
                      width: AppDimensions.getDimensions(requiredWidth: 320),
                      decoration: BoxDecoration(
                          color: AppColors.kMainContainerNotificationCommon,
                          borderRadius: BorderRadius.circular(8)),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: AppDimensions.getDimensions(requiredWidth: 20),
                          vertical: AppDimensions.getDimensions(requiredHeight: 15),
                        ),
                        child: Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              MainTextGrey(
                                myText: AppStrings.kCostGroupsTeacher,
                                color: AppColors.kMainGery8D,
                                fontSize: AppDimensions.defaultSize * 10,
                              ),
                              Spacer(),
                              Row(
                                children: [
                                  MainTextBlue(
                                    myText: AppStrings.kEGGroupsTeacher,
                                    fontSize: AppDimensions.defaultSize * 12,
                                  ),
                                  MainTextBlue(
                                    myText: AppStrings.kActualCostGroupsTeacher,
                                  )
                                ],
                              )
                            ],
                          ),
                          Spacer(),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              MainTextBlack(
                                myText: AppStrings.kPurchaseGroupsTeacher,
                                fontSize: AppDimensions.defaultSize * 16,
                              ),
                              Spacer(),
                              MainTextGrey(
                                myText: AppStrings.kDatePurchaseGroupsTeacher,
                                color: AppColors.kMainGery8D,
                                fontSize: AppDimensions.defaultSize * 10,
                              ),
                            ],
                          )
                        ]),
                      ),
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 100),
                    ),
                    MainButtonGrey(
                      buttonName: AppStrings.kStatisticsButtonGroups,
                      onPressed: () {
                        Navigator.pushNamed(context, RoutesManager.studentStatisticsTeacher);
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
// SizedBox(
//                   height: AppDimensions.getDimensions(requiredHeight: 3),
//                 ),
