import 'package:assiut_project/core/app_constants/app_assets.dart';
import 'package:assiut_project/core/app_constants/app_strings.dart';
import 'package:assiut_project/core/app_dimensions.dart';
import 'package:assiut_project/core/app_routes.dart';
import 'package:assiut_project/main_layers/presentaion_layer/assistant/main_screens/shared_components_mainscreen/main_hint_mainscreen.dart';
import 'package:assiut_project/main_layers/presentaion_layer/assistant/main_screens/shared_components_mainscreen/main_text_mainscreen.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/custom_widgets/close_sign.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/custom_widgets/main_button_grey.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/custom_widgets/main_button_red.dart';
import 'package:flutter/material.dart';

class FirstNewVersion extends StatelessWidget {
  const FirstNewVersion({Key? key}) : super(key: key);
  final int myIndex = 1;
  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context: context, designHeight: 778, designWidth: 360);
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
          right: AppDimensions.getDimensions(requiredWidth: 20),
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const CloseSign(),
              Stack(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(
                        top: AppDimensions.getDimensions(requiredHeight: 60),
                      ),
                      child: SizedBox(
                          height: AppDimensions.getDimensions(requiredHeight: 308),
                          child: Image.asset(AppAssets.kPhone)),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                        padding: EdgeInsets.only(
                          top: AppDimensions.getDimensions(requiredHeight: 300),
                        ),
                        child: const MainTextMainScreen(
                            myText: AppStrings.kMainTextMainScreenNewVersion)),
                  )
                ],
              ),
              const MainHintTextMainScreen(
                myText1: AppStrings.kHintText1TextMainScreenNewOffer,
                myText2: AppStrings.kHintText2TextMainScreenNewOffer,
                myText3: AppStrings.kHintText3TextMainScreenNewOffer,
                myText4: AppStrings.kHintText4TextMainScreenNewOffer,
                myText5: AppStrings.kHintText5TextMainScreenNewOffer,
              ),
              SizedBox(
                height: AppDimensions.getDimensions(requiredHeight: 55),
              ),
              Padding(
                  padding: EdgeInsets.only(
                    left: AppDimensions.getDimensions(requiredWidth: 20),
                  ),
                  child: MainButtonGrey(
                    buttonName: AppStrings.kMainFirstButtonTextMainScreenNewVersion,
                    onPressed: () {
                      Navigator.pushNamed(context, RoutesManager.secondNewVersion);
                    },
                  )),
              Padding(
                padding: EdgeInsets.only(
                  bottom: AppDimensions.getDimensions(requiredHeight: 20),
                  top: AppDimensions.getDimensions(
                    requiredHeight: 10,
                  ),
                  left: AppDimensions.getDimensions(requiredWidth: 20),
                ),
                child: MainButtonRed(
                  onPressed: () {
                    if (myIndex == 0) {
                      Navigator.pushNamed(context, RoutesManager.myHome);
                    } else {
                      Navigator.pushNamed(context, RoutesManager.myHomeTeacher);
                    }
                  },
                  buttonName: AppStrings.kMainSecondButtonTextMainScreenNewVersion,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
