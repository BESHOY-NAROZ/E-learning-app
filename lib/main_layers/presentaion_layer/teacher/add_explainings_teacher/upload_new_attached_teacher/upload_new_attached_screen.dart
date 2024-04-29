import 'package:assiut_project/core/app_constants/app_assets.dart';
import 'package:assiut_project/core/app_constants/app_colors.dart';
import 'package:assiut_project/core/app_constants/app_strings.dart';
import 'package:assiut_project/core/app_dimensions.dart';
import 'package:assiut_project/core/app_routes.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/expanded_text_form_filed.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_app_bar.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_button_red.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_text_black.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_text_grey.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class UploadNewAttachedTeacher extends StatelessWidget {
  const UploadNewAttachedTeacher({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context: context, designHeight: 778, designWidth: 360);
    return Scaffold(
      body: Column(
        children: [
          const MainAppBar(
            designHeight: 1006,
            designWidth: 360,
            myTitle: AppStrings.kUploadAttachedAddNewAttached,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 33),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        MainTextBlack(
                          myText: AppStrings.kExplainingAddNewAttached,
                          fontSize: AppDimensions.defaultSize * 16,
                        ),
                        SizedBox(
                            height: AppDimensions.getDimensions(requiredHeight: 24),
                            width: AppDimensions.getDimensions(requiredWidth: 24),
                            child: Image.asset(AppAssets.kExplaining))
                      ],
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 6),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.only(right: AppDimensions.getDimensions(requiredWidth: 24)),
                      child: MainTextGrey(
                        myText: AppStrings.kSpecificFirstTestCreateExam,
                        color: AppColors.kMainGery8D,
                        fontSize: AppDimensions.defaultSize * 10,
                      ),
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 20),
                    ),
                    MainTextGrey(
                      myText: AppStrings.kActualExplainingAddNewAttached,
                      color: AppColors.kMainGery7A,
                      fontSize: AppDimensions.defaultSize * 12,
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 8),
                    ),
                    ExpandedCustomTextFormFiled(
                      height: 103,
                      hintText: AppStrings.kActualFirstQExam,
                      textDirection: TextDirection.rtl,
                      hintStyle: TextStyle(
                        fontSize: AppDimensions.defaultSize * 12,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Almarai',
                        color: AppColors.kDetailsProfileEditing,
                      ),
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 40),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        DottedBorder(
                          radius: const Radius.circular(12),
                          color: AppColors.kMainGeryD9,
                          dashPattern: const [10, 6],
                          strokeWidth: 2,
                          strokeCap: StrokeCap.butt,
                          child: SizedBox(
                            height: AppDimensions.getDimensions(requiredHeight: 126),
                            width: AppDimensions.getDimensions(requiredWidth: 143),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  AppAssets.kVideo2,
                                  height: AppDimensions.getDimensions(requiredHeight: 45),
                                  width: AppDimensions.getDimensions(requiredWidth: 45),
                                ),
                                SizedBox(
                                  height: AppDimensions.getDimensions(requiredHeight: 10),
                                ),
                                MainTextGrey(
                                  myText: AppStrings.kDownLoadVideoCreateCustomExam,
                                  color: AppColors.kMainGery7A,
                                  fontSize: AppDimensions.defaultSize * 12,
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: AppDimensions.getDimensions(requiredWidth: 18),
                        ),
                        DottedBorder(
                          radius: const Radius.circular(12),
                          color: AppColors.kMainGeryD9,
                          dashPattern: const [10, 6],
                          strokeWidth: 2,
                          strokeCap: StrokeCap.butt,
                          child: SizedBox(
                            height: AppDimensions.getDimensions(requiredHeight: 126),
                            width: AppDimensions.getDimensions(requiredWidth: 143),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                RotationTransition(
                                  turns: const AlwaysStoppedAnimation(10 / 360),
                                  child: Image.asset(
                                    AppAssets.kImage,
                                    height: AppDimensions.getDimensions(requiredHeight: 45),
                                    width: AppDimensions.getDimensions(requiredWidth: 45),
                                  ),
                                ),
                                SizedBox(
                                  height: AppDimensions.getDimensions(requiredHeight: 10),
                                ),
                                MainTextGrey(
                                  myText: AppStrings.kDownLoadPicCreateCustomExam,
                                  color: AppColors.kMainGery7A,
                                  fontSize: AppDimensions.defaultSize * 12,
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 126),
                    ),
                    MainButtonRed(
                      buttonName: AppStrings.kUploadNewAttached,
                      onPressed: () {
                        Navigator.pushNamed(context, RoutesManager.uploadAttachedDoneTeacher);
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
