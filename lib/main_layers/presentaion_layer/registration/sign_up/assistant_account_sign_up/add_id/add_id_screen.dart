import 'dart:ui';

import 'package:assiut_project/core/app_constants/app_assets.dart';
import 'package:assiut_project/core/app_constants/app_colors.dart';
import 'package:assiut_project/core/app_constants/app_strings.dart';
import 'package:assiut_project/core/app_dimensions.dart';
import 'package:assiut_project/core/app_routes.dart';
import 'package:assiut_project/main_layers/presentaion_layer/registration/sign_in/shared_components_signin/main_hint_text_registration.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/custom_widgets/main_app_bar.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/custom_widgets/main_text_blue.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/custom_widgets/main_text_grey.dart';
import 'package:flutter/material.dart';

class AddID extends StatelessWidget {
  const AddID({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context: context, designHeight: 800, designWidth: 360);

    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          const MainAppBar(
            designHeight: 1006,
            designWidth: 360,
            myTitle: AppStrings.kAssistantSignUp,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                SizedBox(
                  height: AppDimensions.getDimensions(requiredHeight: 24),
                ),
                MainTextBlue(
                  myText: AppStrings.kAddPhotoSignUp,
                  fontSize: AppDimensions.defaultSize * 18,
                ),
                SizedBox(
                  height: AppDimensions.getDimensions(requiredHeight: 9),
                ),
                const MainHintTextRegistration(
                  myText: AppStrings.kAddPhotoHintSignUp,
                ),
                SizedBox(
                  height: AppDimensions.getDimensions(requiredHeight: 47),
                ),
                const MainHintTextRegistration(
                  myText: AppStrings.kAddPhotoForwardSignUp,
                ),
                SizedBox(
                  height: AppDimensions.getDimensions(requiredHeight: 11),
                ),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      height: AppDimensions.getDimensions(requiredHeight: 152.39),
                      width: AppDimensions.getDimensions(requiredWidth: 236),
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8), color: AppColors.kMainTextWhite),
                      child: ImageFiltered(
                        imageFilter: ImageFilter.blur(sigmaX: 2.5, sigmaY: 2.5),
                        child: Image.asset(
                          AppAssets.kID,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: AppDimensions.getDimensions(requiredHeight: 87),
                          width: AppDimensions.getDimensions(requiredWidth: 70),
                          decoration: BoxDecoration(
                              color: AppColors.kSignUpContainerSignUp,
                              borderRadius: BorderRadius.circular(8)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                AppAssets.kUpload,
                                width: AppDimensions.getDimensions(requiredWidth: 24),
                                height: AppDimensions.getDimensions(requiredHeight: 24),
                              ),
                              SizedBox(
                                height: AppDimensions.getDimensions(requiredHeight: 5),
                              ),
                              MainTextGrey(
                                myText: AppStrings.kUploadImageSignUp,
                                fontSize: AppDimensions.defaultSize * 12,
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: AppDimensions.getDimensions(requiredWidth: 17),
                        ),
                        Container(
                          height: AppDimensions.getDimensions(requiredHeight: 87),
                          width: AppDimensions.getDimensions(requiredWidth: 70),
                          decoration: BoxDecoration(
                              color: AppColors.kSignUpContainerSignUp,
                              borderRadius: BorderRadius.circular(8)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                AppAssets.kCamera,
                                width: AppDimensions.getDimensions(requiredWidth: 24),
                                height: AppDimensions.getDimensions(requiredHeight: 24),
                              ),
                              SizedBox(
                                height: AppDimensions.getDimensions(requiredHeight: 5),
                              ),
                              MainTextGrey(
                                myText: AppStrings.kTakeImageSignUp,
                                fontSize: AppDimensions.defaultSize * 12,
                              )
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: AppDimensions.getDimensions(requiredHeight: 22),
                ),
                const MainHintTextRegistration(
                  myText: AppStrings.kAddPhotoBackSignUp,
                ),
                SizedBox(
                  height: AppDimensions.getDimensions(requiredHeight: 11),
                ),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      height: AppDimensions.getDimensions(requiredHeight: 152.39),
                      width: AppDimensions.getDimensions(requiredWidth: 236),
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8), color: AppColors.kMainTextWhite),
                      child: ImageFiltered(
                        imageFilter: ImageFilter.blur(sigmaX: 2.5, sigmaY: 2.5),
                        child: Image.asset(
                          AppAssets.kID,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: AppDimensions.getDimensions(requiredHeight: 87),
                          width: AppDimensions.getDimensions(requiredWidth: 70),
                          decoration: BoxDecoration(
                              color: AppColors.kSignUpContainerSignUp,
                              borderRadius: BorderRadius.circular(8)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                AppAssets.kUpload,
                                width: AppDimensions.getDimensions(requiredWidth: 24),
                                height: AppDimensions.getDimensions(requiredHeight: 24),
                              ),
                              SizedBox(
                                height: AppDimensions.getDimensions(requiredHeight: 5),
                              ),
                              MainTextGrey(
                                myText: AppStrings.kUploadImageSignUp,
                                fontSize: AppDimensions.defaultSize * 12,
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: AppDimensions.getDimensions(requiredWidth: 17),
                        ),
                        Container(
                          height: AppDimensions.getDimensions(requiredHeight: 87),
                          width: AppDimensions.getDimensions(requiredWidth: 70),
                          decoration: BoxDecoration(
                              color: AppColors.kSignUpContainerSignUp,
                              borderRadius: BorderRadius.circular(8)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                AppAssets.kCamera,
                                width: AppDimensions.getDimensions(requiredWidth: 24),
                                height: AppDimensions.getDimensions(requiredHeight: 24),
                              ),
                              SizedBox(
                                height: AppDimensions.getDimensions(requiredHeight: 5),
                              ),
                              MainTextGrey(
                                myText: AppStrings.kTakeImageSignUp,
                                fontSize: AppDimensions.defaultSize * 12,
                              )
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: AppDimensions.getDimensions(requiredHeight: 59),
                ),
                Container(
                  height: AppDimensions.getDimensions(requiredHeight: 45),
                  width: AppDimensions.getDimensions(requiredWidth: 320),
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
                  child: MaterialButton(
                      color: AppColors.kButtonSignUp,
                      shape: const RoundedRectangleBorder(),
                      onPressed: () {
                        Navigator.pushNamed(context, RoutesManager.confirmAccount);
                      },
                      child: Text(
                        AppStrings.kAddPhotoContinuanceSignUp,
                        style: TextStyle(
                            fontFamily: 'Almarai',
                            color: AppColors.kMainTextWhite,
                            fontWeight: FontWeight.w800,
                            fontSize: AppDimensions.defaultSize * 16),
                      )),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
