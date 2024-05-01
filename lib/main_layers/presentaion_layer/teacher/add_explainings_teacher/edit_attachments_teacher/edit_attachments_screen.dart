import 'package:assiut_project/core/app_constants/app_assets.dart';
import 'package:assiut_project/core/app_constants/app_colors.dart';
import 'package:assiut_project/core/app_constants/app_strings.dart';
import 'package:assiut_project/core/app_dimensions.dart';
import 'package:assiut_project/core/app_routes.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/custom_widgets/main_app_bar.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/custom_widgets/main_button_red.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/custom_widgets/main_text_black.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/custom_widgets/main_text_grey.dart';
import 'package:flutter/material.dart';

import 'remove_attachment_bottom_sheet.dart';

class EditAttachmentsTeacher extends StatelessWidget {
  const EditAttachmentsTeacher({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context: context, designHeight: 778, designWidth: 360);
    return Scaffold(
      body: Column(
        children: [
          const MainAppBar(
            designHeight: 1006,
            designWidth: 360,
            myTitle: AppStrings.kAddNewAttached,
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
                      height: AppDimensions.getDimensions(requiredHeight: 30),
                    ),
                    MainTextBlack(
                      myText: AppStrings.explainingTextAttached,
                      fontSize: AppDimensions.defaultSize * 16,
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 8),
                    ),
                    MainTextGrey(
                      myText: AppStrings.explainingTextActualAttached,
                      color: AppColors.kMainGery7A,
                      fontSize: AppDimensions.defaultSize * 14,
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 45),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: AppDimensions.getDimensions(requiredHeight: 143),
                          width: AppDimensions.getDimensions(requiredWidth: 143),
                          padding: EdgeInsets.symmetric(
                            vertical: AppDimensions.getDimensions(requiredHeight: 5),
                          ),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8), color: AppColors.kMainGeryFA),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.symmetric(
                                  horizontal: AppDimensions.getDimensions(requiredWidth: 7),
                                ),
                                child: Row(
                                  children: [
                                    RemoveAttachmentBottomSheet(),
                                    const Spacer(),
                                    MainTextGrey(
                                      myText: AppStrings.explainingVideoAttached,
                                      color: AppColors.kMainGery7A,
                                      fontSize: AppDimensions.defaultSize * 12,
                                    ),
                                    SizedBox(
                                      width: AppDimensions.getDimensions(requiredWidth: 2),
                                    ),
                                    Image.asset(
                                      AppAssets.kVideo,
                                      height: AppDimensions.getDimensions(requiredHeight: 12),
                                      width: AppDimensions.getDimensions(requiredWidth: 12),
                                    )
                                  ],
                                ),
                              ),
                              Spacer(),
                              Image.asset(
                                AppAssets.kYouTube,
                                height: AppDimensions.getDimensions(requiredHeight: 80),
                                width: AppDimensions.getDimensions(requiredWidth: 143),
                              ),
                              Spacer(),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                  horizontal: AppDimensions.getDimensions(requiredWidth: 7),
                                ),
                                child: Row(
                                  children: [
                                    MainTextGrey(
                                      myText: AppStrings.sizeAttached,
                                      color: AppColors.kMainGeryDA,
                                      fontSize: AppDimensions.defaultSize * 12,
                                      fontWeight: FontWeight.w400,
                                    ),
                                    Spacer(),
                                    MainTextGrey(
                                      myText: AppStrings.dateAttached,
                                      color: AppColors.kMainGeryDA,
                                      fontWeight: FontWeight.w400,
                                      fontSize: AppDimensions.defaultSize * 12,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: AppDimensions.getDimensions(requiredHeight: 143),
                          width: AppDimensions.getDimensions(requiredWidth: 143),
                          padding: EdgeInsets.symmetric(
                            vertical: AppDimensions.getDimensions(requiredHeight: 5),
                          ),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8), color: AppColors.kMainGeryFA),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.symmetric(
                                  horizontal: AppDimensions.getDimensions(requiredWidth: 7),
                                ),
                                child: Row(
                                  children: [
                                    RemoveAttachmentBottomSheet(),
                                    const Spacer(),
                                    MainTextGrey(
                                      myText: AppStrings.explainingFileAttached,
                                      color: AppColors.kMainGery7A,
                                      fontSize: AppDimensions.defaultSize * 12,
                                    ),
                                    SizedBox(
                                      width: AppDimensions.getDimensions(requiredWidth: 2),
                                    ),
                                    Image.asset(
                                      AppAssets.kEditFile,
                                      height: AppDimensions.getDimensions(requiredHeight: 12),
                                      width: AppDimensions.getDimensions(requiredWidth: 12),
                                    )
                                  ],
                                ),
                              ),
                              Spacer(),
                              Column(
                                children: [
                                  Image.asset(
                                    AppAssets.kPDF,
                                    height: AppDimensions.getDimensions(requiredHeight: 34),
                                    width: AppDimensions.getDimensions(requiredWidth: 34),
                                  ),
                                  MainTextGrey(
                                    myText: AppStrings.scheduleAttached,
                                    color: AppColors.kMainGery7A,
                                    fontWeight: FontWeight.w400,
                                    fontSize: AppDimensions.defaultSize * 12,
                                  ),
                                ],
                              ),
                              Spacer(),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                  horizontal: AppDimensions.getDimensions(requiredWidth: 7),
                                ),
                                child: Row(
                                  children: [
                                    MainTextGrey(
                                      myText: AppStrings.sizeAttached,
                                      color: AppColors.kMainGeryDA,
                                      fontSize: AppDimensions.defaultSize * 12,
                                      fontWeight: FontWeight.w400,
                                    ),
                                    Spacer(),
                                    MainTextGrey(
                                      myText: AppStrings.dateAttached,
                                      color: AppColors.kMainGeryDA,
                                      fontWeight: FontWeight.w400,
                                      fontSize: AppDimensions.defaultSize * 12,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 25),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, RoutesManager.uploadNewAttachedTeacher);
                      },
                      child: Container(
                        height: AppDimensions.getDimensions(requiredHeight: 45),
                        width: AppDimensions.getDimensions(requiredWidth: 156),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8), color: AppColors.kMainGeryFA),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const MainTextGrey(
                              myText: AppStrings.updateExplainingAttached,
                            ),
                            SizedBox(
                              width: AppDimensions.getDimensions(requiredWidth: 5),
                            ),
                            Image.asset(
                              AppAssets.kEdit,
                              color: AppColors.kMainTextBlack,
                              height: AppDimensions.getDimensions(requiredHeight: 20),
                              width: AppDimensions.getDimensions(requiredWidth: 20),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 90),
                    ),
                    MainButtonRed(
                      buttonName: AppStrings.kSentButtonExams,
                      onPressed: () {
                        Navigator.pushNamed(context, RoutesManager.sendAttachmentsTeacher);
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
