import 'package:assiut_project/core/app_constants/app_colors.dart';
import 'package:assiut_project/core/app_constants/app_lists.dart';
import 'package:assiut_project/core/app_constants/app_strings.dart';
import 'package:assiut_project/core/app_dimensions.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/custom_widgets/main_text_blue.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/custom_widgets/main_text_grey.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/custom_widgets/separator.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/custom_widgets/text_form_filed.dart';
import 'package:flutter/material.dart';

class DifficultyQuestionBottomSheet extends StatefulWidget {
  static String currentRadio = AppStrings.kEasyDifficultyDegreeCreateExam;

  const DifficultyQuestionBottomSheet({
    super.key,
  });

  @override
  State<DifficultyQuestionBottomSheet> createState() => _DifficultyQuestionBottomSheetState();
}

class _DifficultyQuestionBottomSheetState extends State<DifficultyQuestionBottomSheet> {
  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context: context, designHeight: 778, designWidth: 360);

    return StatefulBuilder(
      builder: (BuildContext context, void Function(void Function()) setState) {
        return InkWell(
          onTap: () {
            showModalBottomSheet(
              context: context,
              isScrollControlled: true,
              constraints: const BoxConstraints(
                maxWidth: double.infinity,
              ),
              builder: (context) {
                return Container(
                  width: AppDimensions.getDimensions(requiredWidth: 360),
                  height: AppDimensions.getDimensions(requiredHeight: 254),
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
                          height: AppDimensions.getDimensions(requiredHeight: 10),
                        ),
                        MainTextBlue(
                          myText: AppStrings.kDifficultyDegreeCreateExam,
                          color: AppColors.kMainBlueC4,
                          fontSize: AppDimensions.defaultSize * 16,
                        ),
                        SizedBox(
                          height: AppDimensions.getDimensions(requiredHeight: 11),
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
                                      myText: AppLists.kDifficultyList[index],
                                      fontSize: AppDimensions.defaultSize * 12,
                                      textDirection: TextDirection.rtl,
                                    ),
                                    SizedBox(
                                      width: AppDimensions.getDimensions(requiredWidth: 14),
                                    ),
                                    SizedBox(
                                      height: AppDimensions.getDimensions(requiredHeight: 23),
                                      width: AppDimensions.getDimensions(requiredWidth: 23),
                                      child: Radio(
                                        value: AppLists.kDifficultyList[index],
                                        groupValue: DifficultyQuestionBottomSheet.currentRadio,
                                        visualDensity: const VisualDensity(
                                            horizontal: VisualDensity.minimumDensity,
                                            vertical: VisualDensity.minimumDensity),
                                        fillColor: MaterialStateColor.resolveWith(
                                            (states) => AppColors.kMainBlueC4),
                                        onChanged: (value) {
                                          setState(() {
                                            DifficultyQuestionBottomSheet.currentRadio =
                                                value.toString();

                                            Navigator.pop(context);
                                          });
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                            separatorBuilder: (context, index) {
                              return SizedBox(
                                  height: AppDimensions.getDimensions(requiredHeight: 12));
                            },
                            itemCount: AppLists.kDifficultyList.length),
                        const Spacer(),
                      ],
                    ),
                  ),
                );
              },
            );
          },
          child: CustomTextFormFiled(
            hintText: DifficultyQuestionBottomSheet.currentRadio,
            textDirection: TextDirection.rtl,
            prefixIcon: const Icon(Icons.arrow_left_rounded),
            enabled: false,
            hintStyle: TextStyle(
              fontSize: AppDimensions.defaultSize * 12,
              fontWeight: FontWeight.w700,
              fontFamily: 'Almarai',
              color: AppColors.kDetailsProfileEditing,
            ),
          ),
        );
      },
    );
  }
}
