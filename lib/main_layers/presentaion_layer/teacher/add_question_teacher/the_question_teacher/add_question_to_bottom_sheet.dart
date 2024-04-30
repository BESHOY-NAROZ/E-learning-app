import 'package:assiut_project/core/app_constants/app_colors.dart';
import 'package:assiut_project/core/app_constants/app_lists.dart';
import 'package:assiut_project/core/app_constants/app_strings.dart';
import 'package:assiut_project/core/app_dimensions.dart';
import 'package:assiut_project/core/app_routes.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_button_red.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_text_blue.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_text_grey.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/separator.dart';
import 'package:flutter/material.dart';

class AddTheQuestionToBottomSheet extends StatefulWidget {
  static String currentRadio = AppLists.kAddQuestionToList[0];
  const AddTheQuestionToBottomSheet({
    super.key,
  });

  @override
  State<AddTheQuestionToBottomSheet> createState() => _AddTheQuestionToBottomSheetState();
}

class _AddTheQuestionToBottomSheetState extends State<AddTheQuestionToBottomSheet> {
  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context: context, designHeight: 778, designWidth: 360);

    return MainButtonRed(
      buttonName: AppStrings.kSendQuestion,
      onPressed: () {
        {
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
                    width: AppDimensions.getDimensions(requiredWidth: 360),
                    height: AppDimensions.getDimensions(requiredHeight: 272),
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
                            myText: AppStrings.kAddQuestion,
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
                                        myText: AppLists.kAddQuestionToList[index],
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
                                          value: AppLists.kAddQuestionToList[index],
                                          groupValue: AddTheQuestionToBottomSheet.currentRadio,
                                          visualDensity: const VisualDensity(
                                              horizontal: VisualDensity.minimumDensity,
                                              vertical: VisualDensity.minimumDensity),
                                          fillColor: MaterialStateColor.resolveWith(
                                              (states) => AppColors.kMainBlueC4),
                                          onChanged: (value) {
                                            setState(() {
                                              AddTheQuestionToBottomSheet.currentRadio =
                                                  value.toString();
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
                                  height: AppDimensions.getDimensions(requiredHeight: 10),
                                );
                              },
                              itemCount: AppLists.kAddQuestionToList.length),
                          const Spacer(),
                          MainButtonRed(
                            buttonName: AppStrings.kSendQuestion,
                            onPressed: () {
                              if (AddTheQuestionToBottomSheet.currentRadio ==
                                  AppLists.kAddQuestionToList[0]) {
                                Navigator.pushNamed(
                                    context, RoutesManager.sentTheQuestionDoneToMeTeacher);
                              } else if (AddTheQuestionToBottomSheet.currentRadio ==
                                  AppLists.kAddQuestionToList[1]) {
                                Navigator.pushNamed(
                                    context, RoutesManager.sentTheQuestionDoneToBothTeacher);
                              }
                            },
                          ),
                          const Spacer(),
                        ],
                      ),
                    ),
                  );
                },
              );
            },
          );
        }
      },
    );
  }
}
