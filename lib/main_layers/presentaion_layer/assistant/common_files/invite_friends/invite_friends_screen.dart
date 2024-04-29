import 'package:assiut_project/core/app_constants/app_assets.dart';
import 'package:assiut_project/core/app_constants/app_colors.dart';
import 'package:assiut_project/core/app_constants/app_lists.dart';
import 'package:assiut_project/core/app_constants/app_strings.dart';
import 'package:assiut_project/core/app_dimensions.dart';
import 'package:assiut_project/core/app_toast.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_app_bar.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_text_black.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_text_grey.dart';
import 'package:flutter/material.dart';

class InviteFriends extends StatelessWidget {
  const InviteFriends({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context: context, designHeight: 778, designWidth: 360);
    return Scaffold(
      body: Column(
        children: [
          const MainAppBar(
            designHeight: 1006,
            designWidth: 360,
            myTitle: AppStrings.kInviteFriendsCommon,
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
                  myText: AppStrings.kInviteFriendsMainTextCommon,
                  fontSize: AppDimensions.defaultSize * 18,
                ),
                SizedBox(
                  height: AppDimensions.getDimensions(requiredHeight: 8),
                ),
                MainTextGrey(
                  myText: AppStrings.kFirstUnderMainTextCommon,
                  color: AppColors.kHintCommon,
                  fontSize: AppDimensions.defaultSize * 12,
                ),
                MainTextGrey(
                  myText: AppStrings.kSecondUnderMainTextCommon,
                  color: AppColors.kHintCommon,
                  fontSize: AppDimensions.defaultSize * 12,
                ),
                MainTextGrey(
                  myText: AppStrings.kThirdUnderMainTextCommon,
                  color: AppColors.kHintCommon,
                  fontSize: AppDimensions.defaultSize * 12,
                ),
                SizedBox(
                  height: AppDimensions.getDimensions(requiredHeight: 34),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const MainTextBlack(
                      myText: AppStrings.kCodeCommon,
                    ),
                    SizedBox(
                      width: AppDimensions.getDimensions(requiredWidth: 20),
                    ),
                    Container(
                      height: AppDimensions.getDimensions(requiredHeight: 45),
                      width: AppDimensions.getDimensions(requiredWidth: 129),
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
                      child: MaterialButton(
                          color: AppColors.kMainScreenNewVersionButton,
                          shape: const RoundedRectangleBorder(),
                          onPressed: () {
                            MyToast.showMyToast(
                              context: context,
                              myMessage: AppStrings.kCopiedToast,
                              myIcon: Icons.close_rounded,
                            );
                          },
                          child: Text(
                            AppStrings.kCopyCodeCommon,
                            style: TextStyle(
                                fontFamily: 'Almarai',
                                color: AppColors.kMainScreenNewVersionButtonText,
                                fontWeight: FontWeight.w700,
                                fontSize: AppDimensions.defaultSize * 12),
                          )),
                    ),
                  ],
                ),
                SizedBox(
                  height: AppDimensions.getDimensions(requiredHeight: 26),
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
                  height: AppDimensions.getDimensions(requiredHeight: 8),
                ),
                MainTextBlack(
                  myText: AppStrings.kShareAppCommon,
                  fontSize: AppDimensions.defaultSize * 16,
                ),
                SizedBox(
                  height: AppDimensions.getDimensions(requiredHeight: 16),
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
                              color: AppColors.kMainScreenNewVersionButtonText,
                              fontWeight: FontWeight.w700,
                              fontSize: AppDimensions.defaultSize * 12),
                        )),
                  ),
                ),
                SizedBox(
                  height: AppDimensions.getDimensions(requiredHeight: 19),
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
                SizedBox(
                  height: AppDimensions.getDimensions(requiredHeight: 37),
                ),
                Center(
                  child: SizedBox(
                    height: AppDimensions.getDimensions(requiredHeight: 192),
                    width: AppDimensions.getDimensions(requiredWidth: 192),
                    child: Image.asset(
                      AppAssets.kQRMainScreen,
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
