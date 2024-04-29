import 'package:assiut_project/core/app_constants/app_assets.dart';
import 'package:assiut_project/core/app_constants/app_strings.dart';
import 'package:assiut_project/core/app_dimensions.dart';
import 'package:assiut_project/main_layers/presentaion_layer/assistant/groups/shared_components_groups/hint_text_groups.dart';
import 'package:assiut_project/main_layers/presentaion_layer/assistant/groups/shared_components_groups/main_text_groups.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_app_bar.dart';
import 'package:flutter/material.dart';

class AddNewAssistantByQRTeacher extends StatelessWidget {
  const AddNewAssistantByQRTeacher({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context: context, designHeight: 778, designWidth: 360);

    return Scaffold(
      body: Column(
        children: [
          const MainAppBar(
            designHeight: 1006,
            designWidth: 360,
            myTitle: AppStrings.kAddNewAssistantAssistantOfTeacher,
          ),
          Padding(
            padding:
                EdgeInsets.symmetric(horizontal: AppDimensions.getDimensions(requiredWidth: 20)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SizedBox(
                  height: AppDimensions.getDimensions(requiredHeight: 20),
                ),
                const MainTextGroups(
                  myText: AppStrings.kAddNewAssistantNowAssistantOfTeacher,
                ),
                SizedBox(
                  height: AppDimensions.getDimensions(requiredHeight: 20),
                ),
                HintTextGroups(
                  myText: AppStrings.kScanAssistantOfTeacher,
                  fontSize: AppDimensions.defaultSize * 12,
                  fontWeight: FontWeight.w700,
                  textDirection: TextDirection.rtl,
                ),
                SizedBox(
                  height: AppDimensions.getDimensions(requiredHeight: 100),
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
