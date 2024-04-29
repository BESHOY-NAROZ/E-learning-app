import 'package:assiut_project/core/app_constants/app_assets.dart';
import 'package:assiut_project/core/app_constants/app_colors.dart';
import 'package:assiut_project/core/app_constants/app_lists.dart';
import 'package:assiut_project/core/app_constants/app_strings.dart';
import 'package:assiut_project/core/app_dimensions.dart';
import 'package:assiut_project/core/app_routes.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_app_bar.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_text_black.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_text_blue.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_text_grey.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/separator.dart';
import 'package:flutter/material.dart';

import 'gift_container.dart';

class PointsProgramTeacher extends StatelessWidget {
  const PointsProgramTeacher({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context: context, designHeight: 826, designWidth: 360);
    return Scaffold(
      body: Column(
        children: [
          const MainAppBar(
            designHeight: 1006,
            designWidth: 360,
            myTitle: AppStrings.kAppBarPointsProgram,
          ),
          SizedBox(
            height: AppDimensions.getDimensions(requiredHeight: 30),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    MainTextBlack(
                      myText: AppStrings.kMyPointsPointsProgram,
                      textDirection: TextDirection.rtl,
                      fontSize: AppDimensions.defaultSize * 18,
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 4),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const MainTextBlue(
                          myText: AppStrings.kActualMyPointsPointsProgram,
                        ),
                        SizedBox(
                          width: AppDimensions.getDimensions(requiredWidth: 8),
                        ),
                        Image.asset(
                          AppAssets.kStar,
                          width: AppDimensions.getDimensions(requiredWidth: 24),
                          height: AppDimensions.getDimensions(requiredHeight: 24),
                        )
                      ],
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 24),
                    ),
                    const Separator(),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 18),
                    ),
                    MainTextBlack(
                      myText: AppStrings.kOneHundredPointsProgram,
                      textDirection: TextDirection.rtl,
                      fontSize: AppDimensions.defaultSize * 18,
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 17),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, RoutesManager.addPointsDoneTeacher);
                        },
                        child: Container(
                          margin:
                              EdgeInsets.only(left: AppDimensions.getDimensions(requiredWidth: 20)),
                          height: AppDimensions.getDimensions(requiredHeight: 45),
                          width: AppDimensions.getDimensions(requiredWidth: 129),
                          decoration: BoxDecoration(
                            color: AppColors.kContainerCommon,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                              child: MainTextGrey(
                                  myText: AppStrings.kExchangePointsProgram,
                                  textAlign: TextAlign.center,
                                  fontSize: AppDimensions.defaultSize * 12)),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 24),
                    ),
                    MainTextBlack(
                      myText: AppStrings.kTwoHundredPointsProgram,
                      textDirection: TextDirection.rtl,
                      fontSize: AppDimensions.defaultSize * 18,
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 17),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, RoutesManager.addPointsDoneTeacher);
                        },
                        child: Container(
                          margin:
                              EdgeInsets.only(left: AppDimensions.getDimensions(requiredWidth: 20)),
                          height: AppDimensions.getDimensions(requiredHeight: 45),
                          width: AppDimensions.getDimensions(requiredWidth: 129),
                          decoration: BoxDecoration(
                            color: AppColors.kContainerCommon,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                              child: MainTextGrey(
                                  myText: AppStrings.kExchangePointsProgram,
                                  fontSize: AppDimensions.defaultSize * 12)),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 24),
                    ),
                    const Separator(),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 18),
                    ),
                    const GiftContainerPointsProgram(),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 24),
                    ),
                    MainTextBlack(
                      myText: AppStrings.kShareAppCommon,
                      fontSize: AppDimensions.defaultSize * 16,
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 17),
                    ),
                    Center(
                      child: Container(
                        height: AppDimensions.getDimensions(requiredHeight: 45),
                        width: AppDimensions.getDimensions(requiredWidth: 320),
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
                        child: MaterialButton(
                            color: AppColors.kMainScreenNewVersionButton,
                            shape: const RoundedRectangleBorder(),
                            onPressed: () {},
                            child: Text(
                              AppStrings.kCopyAppLinkCommon,
                              style: TextStyle(
                                  fontFamily: 'Almarai',
                                  color: AppColors.kLoginEmailOrPhone,
                                  fontWeight: FontWeight.w700,
                                  fontSize: AppDimensions.defaultSize * 12),
                            )),
                      ),
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 19),
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 50),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(AppLists.kLogInWays.length, (index) {
                          return Container(
                            height: AppDimensions.getDimensions(requiredHeight: 40),
                            width: AppDimensions.getDimensions(requiredWidth: 40),
                            margin: EdgeInsets.symmetric(
                                horizontal: AppDimensions.getDimensions(requiredWidth: 4)),
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            decoration: BoxDecoration(
                                color: AppColors.kLoginWays.withOpacity(0.2),
                                shape: BoxShape.circle),
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: AppLists.kSocialMedia[index],
                            ),
                          );
                        }),
                      ),
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 20),
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
