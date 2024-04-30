import 'package:assiut_project/core/app_constants/app_colors.dart';
import 'package:assiut_project/core/app_constants/app_lists.dart';
import 'package:assiut_project/core/app_constants/app_strings.dart';
import 'package:assiut_project/core/app_dimensions.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_add_small_button.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_text_blue.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_text_grey.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/separator.dart';
import 'package:flutter/material.dart';

class ChooseLanguagesBottomSheet extends StatelessWidget {
  const ChooseLanguagesBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context: context, designHeight: 778, designWidth: 360);

    return StatefulBuilder(
      builder: (BuildContext context, void Function(void Function()) setState) {
        return MainAddSmallButton(
          myText: AppStrings.kAddSubjectSignUp,
          onPressed: () {
            showModalBottomSheet(
              isScrollControlled: true,
              constraints: const BoxConstraints(
                maxWidth: double.infinity,
              ),
              context: context,
              builder: (context) {
                return Container(
                  width: AppDimensions.getDimensions(requiredWidth: 360),
                  height: AppDimensions.getDimensions(requiredHeight: 470),
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                      color: AppColors.kMainTextWhite, borderRadius: BorderRadius.circular(20)),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: AppDimensions.getDimensions(requiredWidth: 20),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        SizedBox(
                          height: AppDimensions.getDimensions(requiredHeight: 14),
                        ),
                        const Align(
                          alignment: Alignment.center,
                          child: Separator(
                            designHeight: 4,
                            designWidth: 68,
                          ),
                        ),
                        SizedBox(
                          height: AppDimensions.getDimensions(requiredHeight: 6),
                        ),
                        MainTextBlue(
                          myText: AppStrings.kSubjectCreateExam,
                          color: AppColors.kMainBlueC4,
                          fontSize: AppDimensions.defaultSize * 16,
                        ),
                        SizedBox(
                          height: AppDimensions.getDimensions(requiredHeight: 3),
                        ),
                        ListView.separated(
                            shrinkWrap: true,
                            physics: const BouncingScrollPhysics(),
                            itemBuilder: (context, index) {
                              return Container(
                                height: AppDimensions.getDimensions(requiredHeight: 45),
                                width: AppDimensions.getDimensions(requiredWidth: 320),
                                padding: EdgeInsets.only(
                                    right: AppDimensions.getDimensions(requiredWidth: 13)),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: AppColors.kMainGeryFA),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    MainTextGrey(
                                      myText: AppLists.kLanguagesList[index],
                                      fontSize: AppDimensions.defaultSize * 12,
                                      textDirection: TextDirection.rtl,
                                    ),
                                    SizedBox(
                                      width: AppDimensions.getDimensions(requiredWidth: 14),
                                    ),
                                    SizedBox(
                                        height: AppDimensions.getDimensions(requiredHeight: 23),
                                        width: AppDimensions.getDimensions(requiredWidth: 23),
                                        child: Checkbox(
                                          value: false,
                                          side: const BorderSide(color: AppColors.kLoginRememberMe),
                                          onChanged: (value) {},
                                        )),
                                  ],
                                ),
                              );
                            },
                            separatorBuilder: (context, index) {
                              return SizedBox(
                                  height: AppDimensions.getDimensions(requiredHeight: 12));
                            },
                            itemCount: AppLists.kLanguagesList.length),
                        const Spacer(),
                      ],
                    ),
                  ),
                );
              },
            );
          },
        );
      },
    );
  }
}
