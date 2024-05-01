import 'package:assiut_project/core/app_constants/app_colors.dart';
import 'package:assiut_project/core/app_constants/app_lists.dart';
import 'package:assiut_project/core/app_constants/app_strings.dart';
import 'package:assiut_project/core/app_dimensions.dart';
import 'package:assiut_project/core/app_routes.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/custom_widgets/main_button_grey.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/custom_widgets/main_button_red.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/custom_widgets/main_text_black.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/custom_widgets/main_text_grey.dart';
import 'package:flutter/material.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  int myIndex = 0;
  PageController pageController = PageController();
  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context: context, designHeight: 778, designWidth: 360);
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            myIndex == 0
                ? SizedBox(
                    width: AppDimensions.getDimensions(requiredWidth: 45),
                    height: AppDimensions.getDimensions(requiredHeight: 69),
                  )
                : Container(
                    width: AppDimensions.getDimensions(requiredWidth: 45),
                    height: AppDimensions.getDimensions(requiredHeight: 45),
                    margin: EdgeInsets.only(
                        top: AppDimensions.getDimensions(requiredWidth: 24),
                        right: AppDimensions.getDimensions(requiredWidth: 20)),
                    decoration:
                        const BoxDecoration(color: AppColors.kMainGeryFA, shape: BoxShape.circle),
                    child: Icon(
                      Icons.arrow_forward_ios_outlined,
                      color: AppColors.kMainBlack,
                      size: AppDimensions.defaultSize * 20,
                    ),
                  ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(right: AppDimensions.getDimensions(requiredWidth: 20)),
                child: PageView.builder(
                  controller: pageController,
                  itemCount: AppLists.kOnBoardingList.length,
                  physics: const BouncingScrollPhysics(),
                  onPageChanged: (int value) {
                    setState(() {
                      myIndex = value;
                    });
                  },
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            SizedBox(
                              height: AppDimensions.getDimensions(requiredHeight: 28),
                            ),
                            Image.asset(
                              AppLists.kOnBoardingList[index],
                              fit: BoxFit.fitHeight,
                              height: AppDimensions.getDimensions(requiredHeight: 302),
                              width: AppDimensions.getDimensions(requiredWidth: 302),
                            ),
                            SizedBox(
                              height: AppDimensions.getDimensions(requiredHeight: 17),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: List.generate(
                                3,
                                (index) {
                                  return Container(
                                    height: AppDimensions.getDimensions(requiredHeight: 10),
                                    width: AppDimensions.getDimensions(requiredWidth: 10),
                                    margin: EdgeInsets.only(
                                        left: AppDimensions.getDimensions(requiredWidth: 8)),
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: index == myIndex
                                            ? AppColors.kMainBlack
                                            : AppColors.kMainGeryDA),
                                  );
                                },
                              ),
                            ),
                            SizedBox(
                              height: AppDimensions.getDimensions(requiredHeight: 23),
                            ),
                            MainTextBlack(
                              myText: AppLists.kMainOnBoardingList[index],
                              color: AppColors.kMainBlack,
                              fontSize: AppDimensions.defaultSize * 16,
                            ),
                            SizedBox(
                              height: AppDimensions.getDimensions(requiredHeight: 4),
                            ),
                            MainTextGrey(
                              myText: AppStrings.kHintOnBoarding,
                              fontSize: AppDimensions.defaultSize * 14,
                              fontWeight: FontWeight.w400,
                              textDirection: TextDirection.rtl,
                              textAlign: TextAlign.start,
                            ),
                            SizedBox(
                              height: AppDimensions.getDimensions(requiredHeight: 60),
                            ),
                            myIndex == 2
                                ? MainButtonGrey(
                                    buttonName: AppStrings.kButton1OnBoarding,
                                    color: AppColors.kMainBlack,
                                    onPressed: () {
                                      Navigator.pushReplacementNamed(
                                          context, RoutesManager.accountType);
                                    },
                                  )
                                : SizedBox(
                                    height: AppDimensions.getDimensions(requiredHeight: 45),
                                  ),
                            SizedBox(
                              height: AppDimensions.getDimensions(requiredHeight: 8),
                            ),
                            MainButtonRed(
                              buttonName: myIndex != 2
                                  ? AppStrings.kButtonOnBoarding
                                  : AppStrings.kButton2OnBoarding,
                              onPressed: () {
                                if (myIndex == 2) {
                                  Navigator.pushReplacementNamed(
                                      context, RoutesManager.loginScreen);
                                } else {
                                  pageController.nextPage(
                                      duration: const Duration(milliseconds: 400),
                                      curve: Curves.linear);
                                }
                              },
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
