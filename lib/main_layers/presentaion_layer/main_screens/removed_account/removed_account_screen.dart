import 'package:assiut_project/core/app_constants/app_assets.dart';
import 'package:assiut_project/core/app_constants/app_strings.dart';
import 'package:assiut_project/core/app_dimensions.dart';
import 'package:assiut_project/core/app_routes.dart';
import 'package:assiut_project/main_layers/presentaion_layer/main_screens/shared_components_mainscreen/main_hint_mainscreen.dart';
import 'package:assiut_project/main_layers/presentaion_layer/main_screens/shared_components_mainscreen/main_text_mainscreen.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/close_sign.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_button_red.dart';
import 'package:flutter/material.dart';

class RemovedAccount extends StatelessWidget {
  const RemovedAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context: context, designHeight: 778, designWidth: 360);
    return Scaffold(
      body: SizedBox(
        height: AppDimensions.screenHeight,
        width: AppDimensions.screenWidth,
        child: Padding(
          padding: EdgeInsets.only(
            right: AppDimensions.getDimensions(requiredWidth: 32),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: AppDimensions.getDimensions(requiredHeight: 38),
                ),
                child: const CloseSign(),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: AppDimensions.getDimensions(requiredHeight: 60),
                    ),
                    child: SizedBox(
                        height:
                            AppDimensions.getDimensions(requiredHeight: 308),
                        width: AppDimensions.getDimensions(requiredWidth: 200),
                        child: Image.asset(AppAssets.kWarning)),
                  ),
                  const Spacer(),
                  Padding(
                      padding: EdgeInsets.only(
                        top: AppDimensions.getDimensions(requiredHeight: 300),
                      ),
                      child: const MainTextMainScreen(
                          myText: AppStrings.kMainTextMainScreenRemovedAccount))
                ],
              ),

              const MainHintTextMainScreen(
                myText1: AppStrings.kHintText1TextMainScreenNewOffer,
                myText2: AppStrings.kHintText2TextMainScreenNewOffer,
                myText3: AppStrings.kHintText3TextMainScreenNewOffer,
                myText4: AppStrings.kHintText4TextMainScreenNewOffer,
                myText5: AppStrings.kHintText5TextMainScreenNewOffer,
              ),
              const Spacer(),
              Padding(
                padding: EdgeInsets.only(
                    bottom: AppDimensions.getDimensions(requiredHeight: 40
                    ),
                left: AppDimensions.getDimensions(requiredWidth: 32
                ),),

                child: Center(
                  child: MainButtonRed(
                    onPressed: () {
                      Navigator.pushNamed(context, RoutesManager.homeMainScreen);

                    },
                    buttonName: AppStrings.kMainButtonTextMainScreenRemovedAccount,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
