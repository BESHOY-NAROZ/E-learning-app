import 'package:assiut_project/core/app_constants/app_assets.dart';
import 'package:assiut_project/core/app_constants/app_colors.dart';
import 'package:assiut_project/core/app_constants/app_strings.dart';
import 'package:assiut_project/core/app_dimensions.dart';
import 'package:assiut_project/main_layers/presentaion_layer/assistant/main_screens/shared_components_mainscreen/app_bar_mainscreen.dart';
import 'package:assiut_project/main_layers/presentaion_layer/assistant/main_screens/shared_components_mainscreen/main_text_mainscreen.dart';
import 'package:assiut_project/main_layers/presentaion_layer/assistant/main_screens/shared_components_mainscreen/more_row_mainscreen.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_text_grey.dart';
import 'package:assiut_project/main_layers/presentaion_layer/teacher/main_screens/home_mainscreen/bottom_List_mainscreen.dart';
import 'package:flutter/material.dart';

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
          const AppBarMainScreen(
            designHeight: 1006,
            designWidth: 360,
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(
                  right: AppDimensions.getDimensions(requiredWidth: 19)),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 12),
                    ),
                    const MainTextMainScreen(
                        myText: AppStrings.kMainTextMainScreenHome),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 7),
                    ),
                    const MoreRowMainScreen(
                        title: AppStrings.kHintText1MainScreenHome,
                        vectorIcon: AppAssets.kVector1HomeScreen),
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
                              width: AppDimensions.getDimensions(
                                  requiredWidth: 333),
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: AppDimensions.getDimensions(
                                        requiredWidth: 3)),
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
                          const TeacherHomeWorking(
                            myText: AppStrings.kAddQuestionHome,
                            myIcon: AppAssets.kAddQuestion,
                          ),
                          SizedBox(
                            width:
                                AppDimensions.getDimensions(requiredWidth: 15),
                          ),
                          const TeacherHomeWorking(
                            myText: AppStrings.kCreateTestHome,
                            myIcon: AppAssets.kExamVector,
                          ),
                          SizedBox(
                            width:
                                AppDimensions.getDimensions(requiredWidth: 15),
                          ),
                          const TeacherHomeWorking(
                            myText: AppStrings.kCreateGroupHome,
                            myIcon: AppAssets.kVector3HomeScreen,
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
                    const MoreRowMainScreen(
                        title: AppStrings.kAttachedHome,
                        vectorIcon: AppAssets.kPlay),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 13),
                    ),

                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 57),
                      child: ListView.builder(
                        itemCount: 3,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: EdgeInsets.only(
                              left: AppDimensions.getDimensions(
                                  requiredWidth: 10),
                            ),
                            child: Container(
                              decoration: BoxDecoration(
                                color: AppColors.kSmallListMainScreenHome,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              width: AppDimensions.getDimensions(
                                  requiredWidth: 211),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      const Text(
                                        AppStrings.kTransitionalElementsHome,
                                        style: TextStyle(
                                            fontFamily: 'Almarai',
                                            color: AppColors
                                                .kSmallListFirstTextMainScreenHome,
                                            fontWeight: FontWeight.w700,
                                            fontSize: 16),
                                      ),
                                      SizedBox(
                                        height: AppDimensions.getDimensions(
                                            requiredHeight: 4),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                          bottom: AppDimensions.getDimensions(
                                              requiredHeight: 1),
                                        ),
                                        child: const Text(
                                          AppStrings.kElementsLessonHome,
                                          style: TextStyle(
                                              fontFamily: 'Almarai',
                                              color: AppColors
                                                  .kSmallListSecondTextMainScreenHome,
                                              fontWeight: FontWeight.w700,
                                              fontSize: 12),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    width: AppDimensions.getDimensions(
                                        requiredWidth: 4),
                                  ),
                                  SizedBox(
                                      height: AppDimensions.getDimensions(
                                          requiredHeight: 26),
                                      width: AppDimensions.getDimensions(
                                          requiredWidth: 26),
                                      child: Image.asset(AppAssets.kAttached)),
                                  SizedBox(
                                    width: AppDimensions.getDimensions(
                                        requiredWidth: 7),
                                  )
                                ],
                              ),
                            ),
                          );
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
                    const MoreRowMainScreen(
                        title: AppStrings.kTrainingCreatedHome,
                        vectorIcon: AppAssets.kPlay),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 13),
                    ),
                    BottomListMainScreenTeacher()
                    // SizedBox(
                    //   height: AppDimensions.getDimensions(requiredHeight: 16),
                    // ),
                    // Padding(
                    //   padding: EdgeInsets.only(
                    //     left: AppDimensions.getDimensions(
                    //       requiredWidth: 16,
                    //     ),
                    //     right: AppDimensions.getDimensions(requiredWidth: 16),
                    //   ),
                    //   child: Container(
                    //     width: AppDimensions.getDimensions(
                    //       requiredWidth: 328,
                    //     ),
                    //     height: AppDimensions.getDimensions(requiredHeight: 3),
                    //     color: AppColors.kSplitterMainScreenHome,
                    //   ),
                    // ),
                    // SizedBox(
                    //   height: AppDimensions.getDimensions(
                    //     requiredHeight: 28,
                    //   ),
                    // ),
                    // const MoreRowMainScreen(
                    //     title: AppStrings.kHintText3MainScreenHome,
                    //     vectorIcon: AppAssets.kVector3HomeScreen),
                    // SizedBox(
                    //   height: AppDimensions.getDimensions(requiredHeight: 15),
                    // ),
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

class BottomListHomeTeacher extends StatelessWidget {
  const BottomListHomeTeacher({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context: context, designHeight: 778, designWidth: 360);

    return Container();
  }
}

class TeacherHomeWorking extends StatelessWidget {
  const TeacherHomeWorking({
    super.key,
    required this.myText,
    required this.myIcon,
  });

  final String myText;
  final String myIcon;

  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context: context, designHeight: 778, designWidth: 360);

    return Container(
      height: AppDimensions.getDimensions(
        requiredHeight: 99,
      ),
      width: AppDimensions.getDimensions(
        requiredHeight: 91,
      ),
      padding: EdgeInsets.symmetric(
          horizontal: AppDimensions.getDimensions(requiredWidth: 5)),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: AppColors.kMainContainer),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
              height: AppDimensions.getDimensions(
                requiredHeight: 30,
              ),
              width: AppDimensions.getDimensions(
                requiredHeight: 30,
              ),
              child: Image.asset(myIcon)),
          SizedBox(
            height: AppDimensions.getDimensions(
              requiredHeight: 6,
            ),
          ),
          MainTextGrey(
            myText: myText,
            fontSize: 12,
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
