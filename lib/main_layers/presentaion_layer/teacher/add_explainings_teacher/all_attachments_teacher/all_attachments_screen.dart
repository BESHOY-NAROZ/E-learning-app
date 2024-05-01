import 'package:assiut_project/core/app_constants/app_colors.dart';
import 'package:assiut_project/core/app_constants/app_strings.dart';
import 'package:assiut_project/core/app_dimensions.dart';
import 'package:assiut_project/core/app_routes.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/custom_widgets/main_add_small_button.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/custom_widgets/main_app_bar.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/custom_widgets/main_text_black.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/custom_widgets/main_text_grey.dart';
import 'package:flutter/material.dart';

import 'main_attachments_list.dart';

class AllAttachmentsTeacher extends StatelessWidget {
  const AllAttachmentsTeacher({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context: context, designHeight: 778, designWidth: 360);
    return Scaffold(
      body: Column(
        children: [
          const MainAppBar(
            designHeight: 1006,
            designWidth: 360,
            myTitle: AppStrings.attachmentsNewAttached,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 21),
                    ),
                    MainTextBlack(
                      myText: AppStrings.teacherMenuNewAttached,
                      fontSize: AppDimensions.defaultSize * 16,
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 5),
                    ),
                    MainTextGrey(
                      myText: AppStrings.teacherPartsNewAttached,
                      color: AppColors.kMainGery7A,
                      fontSize: AppDimensions.defaultSize * 12,
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 24),
                    ),
                    ListView.separated(
                        shrinkWrap: true,
                        padding: EdgeInsets.zero,
                        physics: const BouncingScrollPhysics(),
                        itemBuilder: (context, index) {
                          return const MainAttachmentsList();
                        },
                        separatorBuilder: (context, index) {
                          return SizedBox(
                            height: AppDimensions.getDimensions(requiredHeight: 8),
                          );
                        },
                        itemCount: 5),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 14),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: MainAddSmallButton(
                        myText: AppStrings.addNewAttached,
                        requiredWidth: 121,
                        textColor: AppColors.kMainGery7A,
                        onPressed: () {
                          Navigator.pushNamed(context, RoutesManager.addNewAttachedTeacher);
                        },
                      ),
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
