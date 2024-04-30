import 'package:assiut_project/core/app_constants/app_colors.dart';
import 'package:assiut_project/core/app_constants/app_lists.dart';
import 'package:assiut_project/core/app_constants/app_strings.dart';
import 'package:assiut_project/core/app_dimensions.dart';
import 'package:assiut_project/core/app_routes.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_button_grey.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_button_red.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_text_blue.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_text_grey.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/separator.dart';
import 'package:flutter/material.dart';

class BottomSheetForCreationQuestion extends StatefulWidget {
  const BottomSheetForCreationQuestion({Key? key, required this.buttonName}) : super(key: key);
  final String buttonName;

  @override
  State<BottomSheetForCreationQuestion> createState() => _BottomSheetForCreationQuestionState();
}

class _BottomSheetForCreationQuestionState extends State<BottomSheetForCreationQuestion> {
  String currentRadio = '';
  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context: context, designHeight: 778, designWidth: 360);
    return MainButtonGrey(
      buttonName: widget.buttonName,
      onPressed: () {
        showModalBottomSheet(
          context: context,
          isScrollControlled: true,
          constraints: const BoxConstraints(
            maxWidth: double.infinity,
          ),
          builder: (context) {
            return StatefulBuilder(
              builder: (context, setState) {
                return Container(
                  height: AppDimensions.getDimensions(requiredHeight: 318),
                  width: AppDimensions.getDimensions(requiredWidth: 360),
                  decoration: BoxDecoration(
                      color: AppColors.kMainTextWhite, borderRadius: BorderRadius.circular(20)),
                  child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: AppDimensions.getDimensions(requiredWidth: 20),
                      ),
                      child: Column(
                        children: [
                          SizedBox(
                            height: AppDimensions.getDimensions(requiredHeight: 14),
                          ),
                          const Separator(
                            designHeight: 4,
                            designWidth: 68,
                          ),
                          SizedBox(
                            height: AppDimensions.getDimensions(requiredHeight: 6),
                          ),
                          const Align(
                            alignment: Alignment.topRight,
                            child: MainTextBlue(
                              myText: AppStrings.kAddQuestionBottomSheet,
                              color: AppColors.kMainBlueC4,
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(
                            height: AppDimensions.getDimensions(requiredHeight: 13),
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
                                        myText: AppLists.kCreateQuestionList[index],
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        textDirection: TextDirection.rtl,
                                      ),
                                      SizedBox(
                                        width: AppDimensions.getDimensions(requiredWidth: 14),
                                      ),
                                      SizedBox(
                                        height: AppDimensions.getDimensions(requiredHeight: 23),
                                        width: AppDimensions.getDimensions(requiredWidth: 23),
                                        child: Radio(
                                          value: AppLists.kCreateQuestionList[index],
                                          groupValue: currentRadio,
                                          visualDensity: const VisualDensity(
                                              horizontal: VisualDensity.minimumDensity,
                                              vertical: VisualDensity.minimumDensity),
                                          fillColor: MaterialStateColor.resolveWith(
                                              (states) => AppColors.kMainBlueC4),
                                          onChanged: (value) {
                                            setState(() {
                                              currentRadio = value.toString();
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
                                    height: AppDimensions.getDimensions(requiredHeight: 8));
                              },
                              itemCount: AppLists.kCreateQuestionList.length),
                          SizedBox(height: AppDimensions.getDimensions(requiredHeight: 23)),
                          MainButtonRed(
                            buttonName: AppStrings.kCreateNewQuestionButtonBottomSheet,
                            onPressed: () {
                              if (currentRadio == AppLists.kCreateQuestionList[0]) {
                                Navigator.pushNamed(
                                    context, RoutesManager.teacherQuestionBankTeacher);
                              } else if (currentRadio == AppLists.kCreateQuestionList[1]) {
                                Navigator.pushNamed(context, RoutesManager.questionBankGPSTeacher);
                              } else if (currentRadio == AppLists.kCreateQuestionList[2]) {
                                Navigator.pushNamed(
                                    context, RoutesManager.createQuestionBankTeacher);
                              }
                            },
                          ),
                          const Spacer()
                        ],
                      )),
                );
              },
            );
          },
        );
      },
    );
  }
}
