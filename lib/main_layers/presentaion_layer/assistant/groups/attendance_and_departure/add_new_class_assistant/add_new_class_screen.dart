import 'package:assiut_project/core/app_constants/app_colors.dart';
import 'package:assiut_project/core/app_constants/app_strings.dart';
import 'package:assiut_project/core/app_dimensions.dart';
import 'package:assiut_project/core/app_routes.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/custom_widgets/main_app_bar.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/custom_widgets/main_button_red.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/custom_widgets/main_text_grey.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/custom_widgets/text_form_filed.dart';
import 'package:flutter/material.dart';

class AddNewClassAssistant extends StatelessWidget {
  const AddNewClassAssistant({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context: context, designHeight: 778, designWidth: 360);
    return Scaffold(
      // bottomNavigationBar:  const MainBottomNavigationBar(
      //   designHeight: 1006,
      //   designWidth: 360,
      //
      // ),
      body: Column(
        children: [
          const MainAppBar(
            designHeight: 1006,
            designWidth: 360,
            myTitle: AppStrings.kAddNewClassGroups,
          ),
          Expanded(
            child: Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: AppDimensions.getDimensions(requiredWidth: 20)),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 35),
                    ),
                    MainTextGrey(
                      myText: AppStrings.kClassNameGroups,
                      fontSize: AppDimensions.defaultSize * 12,
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 8),
                    ),
                    CustomTextFormFiled(
                      hintText: AppStrings.kActualClassNameGroups,
                      textDirection: TextDirection.rtl,
                      hintStyle: TextStyle(
                        fontSize: AppDimensions.defaultSize * 14,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Almarai',
                        color: AppColors.kMainGeryDA,
                      ),
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 20),
                    ),
                    MainTextGrey(
                      myText: AppStrings.kSubjectNameGroups,
                      fontSize: AppDimensions.defaultSize * 12,
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 8),
                    ),
                    CustomTextFormFiled(
                      hintText: AppStrings.kActualSubjectNameGroups,
                      textDirection: TextDirection.rtl,
                      prefixIcon: Icon(Icons.arrow_left_rounded),
                      enabled: false,
                      hintStyle: TextStyle(
                        fontSize: AppDimensions.defaultSize * 14,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Almarai',
                        color: AppColors.kMainGeryDA,
                      ),
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 320),
                    ),
                    MainButtonRed(
                      buttonName: AppStrings.kAddClassNameGroups,
                      onPressed: () {
                        Navigator.pushNamed(context, RoutesManager.addNewClassDoneAssistant);
                      },
                    )
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
