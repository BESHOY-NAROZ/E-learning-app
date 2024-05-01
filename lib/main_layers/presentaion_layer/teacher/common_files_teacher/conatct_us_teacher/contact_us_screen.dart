import 'package:assiut_project/core/app_constants/app_assets.dart';
import 'package:assiut_project/core/app_constants/app_colors.dart';
import 'package:assiut_project/core/app_constants/app_lists.dart';
import 'package:assiut_project/core/app_constants/app_strings.dart';
import 'package:assiut_project/core/app_dimensions.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/custom_widgets/main_app_bar.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/custom_widgets/main_text_black.dart';
import 'package:flutter/material.dart';

import 'main_container_contact_us_common.dart';

class ContactUSTeacher extends StatelessWidget {
  const ContactUSTeacher({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context: context, designHeight: 778, designWidth: 360);
    return Scaffold(
      body: Column(
        children: [
          const MainAppBar(
            designHeight: 1006,
            designWidth: 360,
            myTitle: AppStrings.kContactUsCommon,
          ),
          SizedBox(
            height: AppDimensions.getDimensions(requiredHeight: 30),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                MainTextBlack(
                  myText: AppStrings.kContactUsMainTextCommon,
                  fontSize: AppDimensions.defaultSize * 18,
                ),
                SizedBox(
                  height: AppDimensions.getDimensions(requiredHeight: 20),
                ),
                const MainContainerContactUSCommon(
                  myTitle: AppStrings.kEmailCommon,
                  imagePath: AppAssets.kEmail,
                ),
                SizedBox(
                  height: AppDimensions.getDimensions(requiredHeight: 8),
                ),
                const MainContainerContactUSCommon(
                  myTitle: AppStrings.kPhoneCommon,
                  imagePath: AppAssets.kCallMeMainScreen,
                  flip: true,
                ),
                SizedBox(
                  height: AppDimensions.getDimensions(requiredHeight: 8),
                ),
                const MainContainerContactUSCommon(
                  myTitle: AppStrings.kWebSiteCommon,
                  imagePath: AppAssets.kWebSite,
                ),
                SizedBox(
                  height: AppDimensions.getDimensions(requiredHeight: 30),
                ),
                MainTextBlack(
                  myText: AppStrings.kSocialMediaCommon,
                  fontSize: AppDimensions.defaultSize * 18,
                ),
                SizedBox(
                  height: AppDimensions.getDimensions(requiredHeight: 20),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(AppLists.kLogInWays.length, (index) {
                    return Container(
                      height: AppDimensions.getDimensions(requiredHeight: 40),
                      width: AppDimensions.getDimensions(requiredWidth: 40),
                      margin: EdgeInsets.symmetric(
                          horizontal: AppDimensions.getDimensions(requiredWidth: 4)),
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      decoration: BoxDecoration(
                          color: AppColors.kLoginWays.withOpacity(0.2), shape: BoxShape.circle),
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: AppLists.kSocialMedia[index],
                      ),
                    );
                  }),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
