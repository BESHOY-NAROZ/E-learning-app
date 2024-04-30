import 'package:assiut_project/core/app_constants/app_assets.dart';
import 'package:assiut_project/core/app_constants/app_colors.dart';
import 'package:assiut_project/core/app_constants/app_strings.dart';
import 'package:assiut_project/core/app_dimensions.dart';
import 'package:assiut_project/core/app_routes.dart';
import 'package:assiut_project/core/app_toast.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_app_bar.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_button_grey.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_button_red.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_text_black.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_text_grey.dart';
import 'package:flutter/material.dart';

import 'groups_list_send_attachments.dart';

class SendAttachmentsTeacher extends StatelessWidget {
  const SendAttachmentsTeacher({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context: context, designHeight: 778, designWidth: 360);
    return Scaffold(
      body: Column(
        children: [
          const MainAppBar(
            designHeight: 1006,
            designWidth: 360,
            myTitle: AppStrings.sendAttachmentsAttached,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 26),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            MainTextBlack(
                              myText: AppStrings.transitionalElementsNewAttached,
                              fontSize: AppDimensions.defaultSize * 16,
                              color: AppColors.kMainBlack,
                            ),
                            SizedBox(
                              height: AppDimensions.getDimensions(requiredHeight: 3),
                            ),
                            MainTextGrey(
                              myText: AppStrings.biologyNewAttached,
                              fontSize: AppDimensions.defaultSize * 10,
                              color: AppColors.kMainGery8D,
                            )
                          ],
                        ),
                        SizedBox(
                          width: AppDimensions.getDimensions(requiredWidth: 11),
                        ),
                        Image.asset(
                          AppAssets.kAttached,
                          color: AppColors.kMainBlack,
                          height: AppDimensions.getDimensions(requiredHeight: 30),
                          width: AppDimensions.getDimensions(requiredWidth: 30),
                        )
                      ],
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 10),
                    ),
                    const MainTextBlack(
                      myText: AppStrings.kSelectGroupExams,
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 17),
                    ),
                    ListView.separated(
                        padding: EdgeInsets.zero,
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) {
                          return const SendAttachmentsTeacherList();
                        },
                        separatorBuilder: (context, index) {
                          return SizedBox(height: AppDimensions.getDimensions(requiredHeight: 16));
                        },
                        itemCount: 7),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 45),
                    ),
                    MainButtonRed(
                      buttonName: AppStrings.kSentButtonExams,
                      onPressed: () {
                        MyToast.showMyToast(
                          context: context,
                          myMessage: AppStrings.sendDoneAttached,
                          myIcon: Icons.close_rounded,
                        );
                      },
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 15),
                    ),
                    MainButtonGrey(
                      buttonName: AppStrings.sendToMeAttached,
                      onPressed: () {
                        Navigator.pushNamed(context, RoutesManager.sendAttachmentsDoneTeacher);
                      },
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 25),
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
