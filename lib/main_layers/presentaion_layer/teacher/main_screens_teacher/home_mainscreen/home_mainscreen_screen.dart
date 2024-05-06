import 'package:assiut_project/core/app_constants/app_assets.dart';
import 'package:assiut_project/core/app_constants/app_colors.dart';
import 'package:assiut_project/core/app_constants/app_strings.dart';
import 'package:assiut_project/core/app_dimensions.dart';
import 'package:assiut_project/core/app_routes.dart';
import 'package:assiut_project/main_layers/presentaion_layer/assistant/main_screens/shared_components_mainscreen/main_text_mainscreen.dart';
import 'package:assiut_project/main_layers/presentaion_layer/assistant/main_screens/shared_components_mainscreen/more_row_mainscreen.dart';
import 'package:assiut_project/main_layers/presentaion_layer/teacher/main_screens_teacher/shared_components_mainscreen/app_bar_mainscreen_teacher.dart';
import 'package:flutter/material.dart';

import 'attached_list_teacher.dart';
import 'bottom_List_mainscreen.dart';
import 'teacher_home_working.dart';

class HomeMainScreenTeacher extends StatelessWidget {
  const HomeMainScreenTeacher({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context: context, designHeight: 778, designWidth: 360);
    return Scaffold(
      // bottomNavigationBar:  const MainBottomNavigationBar(
      //   designHeight: 1006,
      //   designWidth: 360,
      // ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          const AppBarMainScreenTeacher(
            designHeight: 1006,
            designWidth: 360,
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(right: AppDimensions.getDimensions(requiredWidth: 19)),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 12),
                    ),
                    const MainTextMainScreen(myText: AppStrings.kMainTextMainScreenHome),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 7),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          AppStrings.kHintText1MainScreenHome,
                          style: TextStyle(
                              fontFamily: 'Almarai',
                              color: AppColors.kHintTextMainScreenHome,
                              fontWeight: FontWeight.w700,
                              fontSize: AppDimensions.defaultSize * 16),
                        ),
                        SizedBox(
                          width: AppDimensions.getDimensions(requiredWidth: 3.42),
                        ),
                        SizedBox(
                          child: Image.asset(
                            AppAssets.kVector1HomeScreen,
                            height: AppDimensions.getDimensions(requiredHeight: 20),
                            width: AppDimensions.getDimensions(requiredHeight: 20),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 15),
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 140),
                      child: ListView.builder(
                        itemCount: 3,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return SizedBox(
                              width: AppDimensions.getDimensions(requiredWidth: 333),
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: AppDimensions.getDimensions(requiredWidth: 3)),
                                child: Image.asset(
                                  AppAssets.kListImageHomeScreen,
                                  fit: BoxFit.fill,
                                ),
                              ));
                        },
                      ),
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 13),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: AppDimensions.getDimensions(
                          requiredWidth: 16,
                        ),
                        right: AppDimensions.getDimensions(requiredWidth: 16),
                      ),
                      child: Container(
                        width: AppDimensions.getDimensions(
                          requiredWidth: 328,
                        ),
                        height: AppDimensions.getDimensions(requiredHeight: 3),
                        color: AppColors.kSplitterMainScreenHome,
                      ),
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(
                        requiredHeight: 16,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: AppDimensions.getDimensions(requiredWidth: 19),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.pushNamed(context, RoutesManager.createGroupTeacher);
                            },
                            child: const TeacherHomeWorking(
                              myText: AppStrings.kCreateGroupHome,
                              myIcon: AppAssets.kVector3HomeScreen,
                            ),
                          ),
                          SizedBox(
                            width: AppDimensions.getDimensions(requiredWidth: 15),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.pushNamed(context, RoutesManager.createExamTeacher);
                            },
                            child: const TeacherHomeWorking(
                              myText: AppStrings.kCreateTestHome,
                              myIcon: AppAssets.kExamVector,
                            ),
                          ),
                          SizedBox(
                            width: AppDimensions.getDimensions(requiredWidth: 15),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.pushNamed(context, RoutesManager.addQuestionTeacher);
                            },
                            child: const TeacherHomeWorking(
                              myText: AppStrings.kAddQuestionHome,
                              myIcon: AppAssets.kAddQuestion,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 13),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: AppDimensions.getDimensions(
                          requiredWidth: 16,
                        ),
                        right: AppDimensions.getDimensions(requiredWidth: 16),
                      ),
                      child: Container(
                        width: AppDimensions.getDimensions(
                          requiredWidth: 328,
                        ),
                        height: AppDimensions.getDimensions(requiredHeight: 3),
                        color: AppColors.kSplitterMainScreenHome,
                      ),
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(
                        requiredHeight: 16,
                      ),
                    ),
                    MoreRowMainScreen(
                        onTap: () {
                          Navigator.pushNamed(context, RoutesManager.allAttachmentsTeacher);
                        },
                        title: AppStrings.kAttachedHome,
                        vectorIcon: AppAssets.kPlay),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 13),
                    ),
                    AttachedList(),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 13),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: AppDimensions.getDimensions(
                          requiredWidth: 16,
                        ),
                        right: AppDimensions.getDimensions(requiredWidth: 16),
                      ),
                      child: Container(
                        width: AppDimensions.getDimensions(
                          requiredWidth: 328,
                        ),
                        height: AppDimensions.getDimensions(requiredHeight: 3),
                        color: AppColors.kSplitterMainScreenHome,
                      ),
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(
                        requiredHeight: 16,
                      ),
                    ),
                    MoreRowMainScreen(
                      title: AppStrings.kTrainingCreatedHome,
                      vectorIcon: AppAssets.kExamVector,
                      onTap: () {
                        Navigator.pushNamed(context, RoutesManager.examsTeacher);
                      },
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 13),
                    ),
                    const BottomListMainScreenTeacher(),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 15),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
