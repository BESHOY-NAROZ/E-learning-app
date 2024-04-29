import 'package:assiut_project/core/app_constants/app_colors.dart';
import 'package:assiut_project/core/app_constants/app_strings.dart';
import 'package:assiut_project/core/app_dimensions.dart';
import 'package:assiut_project/core/app_routes.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_button_grey.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_button_red.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_text_blue.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_text_grey.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/separator.dart';
import 'package:flutter/material.dart';

class MyExamsBottomSheet extends StatelessWidget {
  const MyExamsBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context: context, designHeight: 778, designWidth: 360);

    return MainButtonGrey(
      buttonName: AppStrings.kSendToMeExamEditing,
      onPressed: () {
        {
          showModalBottomSheet(
            context: context,
            builder: (context) {
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
                        myText: AppStrings.kMineExamExamEditing,
                        color: AppColors.kMainBlueC4,
                        fontSize: AppDimensions.defaultSize * 16,
                      ),
                      SizedBox(
                        height: AppDimensions.getDimensions(requiredHeight: 11),
                      ),
                      Container(
                        height: AppDimensions.getDimensions(requiredHeight: 45),
                        width: AppDimensions.getDimensions(requiredWidth: 320),
                        padding:
                            EdgeInsets.only(right: AppDimensions.getDimensions(requiredWidth: 13)),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10), color: AppColors.kMainGeryFA),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            MainTextGrey(
                              myText: AppStrings.kExamsCreatedQExamEditing,
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
                                value: 1,
                                groupValue: 1,
                                visualDensity: const VisualDensity(
                                    horizontal: VisualDensity.minimumDensity,
                                    vertical: VisualDensity.minimumDensity),
                                fillColor: MaterialStateColor.resolveWith(
                                    (states) => AppColors.kMainBlueC4),
                                onChanged: (value) {},
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: AppDimensions.getDimensions(requiredHeight: 8),
                      ),
                      Container(
                        height: AppDimensions.getDimensions(requiredHeight: 45),
                        width: AppDimensions.getDimensions(requiredWidth: 320),
                        padding:
                            EdgeInsets.only(right: AppDimensions.getDimensions(requiredWidth: 13)),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10), color: AppColors.kMainGeryFA),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            MainTextGrey(
                              myText: AppStrings.kExamsSolvedExamEditing,
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
                                value: 1,
                                groupValue: 2,
                                visualDensity: const VisualDensity(
                                    horizontal: VisualDensity.minimumDensity,
                                    vertical: VisualDensity.minimumDensity),
                                fillColor: MaterialStateColor.resolveWith(
                                    (states) => AppColors.kMainBlueC4),
                                onChanged: (value) {},
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Spacer(),
                      MainButtonRed(
                        buttonName: AppStrings.kMineExamButtonExamEditing,
                        onPressed: () {
                          Navigator.pushNamed(
                              context, RoutesManager.sentExamDoneToMenuGroupsTeacher);
                        },
                      ),
                      const Spacer(),
                    ],
                  ),
                ),
              );
            },
          );
        }
      },
    );
  }
}
