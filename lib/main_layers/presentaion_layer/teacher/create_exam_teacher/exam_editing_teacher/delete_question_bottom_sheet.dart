import 'package:assiut_project/core/app_constants/app_assets.dart';
import 'package:assiut_project/core/app_constants/app_colors.dart';
import 'package:assiut_project/core/app_constants/app_strings.dart';
import 'package:assiut_project/core/app_dimensions.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/custom_widgets/main_text_black.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/custom_widgets/main_text_grey.dart';
import 'package:flutter/material.dart';

class DeleteQuestionBottomSheet extends StatelessWidget {
  const DeleteQuestionBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context: context, designHeight: 778, designWidth: 360);
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
              height: AppDimensions.getDimensions(requiredHeight: 160),
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
                    MainTextBlack(
                      myText: AppStrings.kDeleteQExamEditing,
                      fontSize: AppDimensions.defaultSize * 18,
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 14),
                    ),
                    MainTextGrey(
                      myText: AppStrings.kActualDeleteQExamEditing,
                      color: AppColors.kDetailsProfileEditing,
                      fontSize: AppDimensions.defaultSize * 14,
                      textDirection: TextDirection.rtl,
                      fontWeight: FontWeight.w400,
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 12),
                    ),
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      Container(
                        height: AppDimensions.getDimensions(requiredHeight: 48),
                        width: AppDimensions.getDimensions(requiredWidth: 136),
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
                        child: MaterialButton(
                            color: AppColors.kMainScreenNewVersionButton,
                            shape: const RoundedRectangleBorder(),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: const Text(
                              AppStrings.kBackDeleteAccount,
                              style: TextStyle(
                                  fontFamily: 'Almarai',
                                  color: AppColors.kMainScreenNewVersionButtonText,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 16),
                            )),
                      ),
                      SizedBox(
                        width: AppDimensions.getDimensions(requiredWidth: 10),
                      ),
                      Container(
                        height: AppDimensions.getDimensions(requiredHeight: 48),
                        width: AppDimensions.getDimensions(requiredWidth: 136),
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
                        child: MaterialButton(
                            color: AppColors.kMainButton,
                            shape: const RoundedRectangleBorder(),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: const Text(
                              AppStrings.kActualDeleteAccount,
                              style: TextStyle(
                                  fontFamily: 'Almarai',
                                  color: AppColors.kMainTextWhite,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 16),
                            )),
                      ),
                    ]),
                  ],
                ),
              ),
            );
          },
        );
      },
      child: Container(
        height: AppDimensions.getDimensions(requiredHeight: 45),
        width: AppDimensions.getDimensions(requiredWidth: 156),
        decoration:
            BoxDecoration(borderRadius: BorderRadius.circular(8), color: AppColors.kMainGeryFA),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const MainTextGrey(
              myText: AppStrings.kDeleteQExams,
            ),
            SizedBox(
              width: AppDimensions.getDimensions(requiredWidth: 5),
            ),
            Image.asset(
              AppAssets.kRemoveGroupsScreen,
              color: AppColors.kMainTextBlack,
              height: AppDimensions.getDimensions(requiredHeight: 20),
              width: AppDimensions.getDimensions(requiredWidth: 20),
            ),
          ],
        ),
      ),
    );
  }
}
