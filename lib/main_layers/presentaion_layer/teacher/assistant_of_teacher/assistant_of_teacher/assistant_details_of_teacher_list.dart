import 'package:assiut_project/core/app_constants/app_assets.dart';
import 'package:assiut_project/core/app_constants/app_colors.dart';
import 'package:assiut_project/core/app_constants/app_strings.dart';
import 'package:assiut_project/core/app_dimensions.dart';
import 'package:assiut_project/core/app_routes.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/custom_widgets/main_text_black.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/custom_widgets/main_text_grey.dart';
import 'package:flutter/material.dart';

class AssistantsDetailsOfTeacherList extends StatelessWidget {
  const AssistantsDetailsOfTeacherList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context: context, designHeight: 778, designWidth: 360);

    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, RoutesManager.everyAssistantSpecificDetails);
      },
      child: Container(
        height: AppDimensions.getDimensions(requiredHeight: 107),
        width: AppDimensions.getDimensions(requiredWidth: 320),
        padding: EdgeInsets.symmetric(
          horizontal: AppDimensions.getDimensions(requiredWidth: 15),
        ),
        decoration:
            BoxDecoration(borderRadius: BorderRadius.circular(8), color: AppColors.kMainGeryF6),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(top: AppDimensions.getDimensions(requiredHeight: 15)),
              child: Align(
                alignment: Alignment.topLeft,
                child: InkWell(
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
                              color: AppColors.kMainTextWhite,
                              borderRadius: BorderRadius.circular(20)),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: AppDimensions.getDimensions(requiredWidth: 20),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                MainTextBlack(
                                  myText: AppStrings.kDeleteAssistantOfTeacher,
                                  fontSize: AppDimensions.defaultSize * 18,
                                ),
                                SizedBox(
                                  height: AppDimensions.getDimensions(requiredHeight: 8),
                                ),
                                MainTextGrey(
                                  myText: AppStrings.kDeleteMainAssistantOfTeacher,
                                  color: AppColors.kDetailsProfileEditing,
                                  fontSize: AppDimensions.defaultSize * 14,
                                  fontWeight: FontWeight.w400,
                                ),
                                SizedBox(
                                  height: AppDimensions.getDimensions(requiredHeight: 18),
                                ),
                                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                                  Container(
                                    height: AppDimensions.getDimensions(requiredHeight: 48),
                                    width: AppDimensions.getDimensions(requiredWidth: 136),
                                    clipBehavior: Clip.antiAliasWithSaveLayer,
                                    decoration:
                                        BoxDecoration(borderRadius: BorderRadius.circular(10)),
                                    child: MaterialButton(
                                        color: AppColors.kMainScreenNewVersionButton,
                                        shape: const RoundedRectangleBorder(),
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                        child: Text(
                                          AppStrings.kBackDeleteAccount,
                                          style: TextStyle(
                                              fontFamily: 'Almarai',
                                              color: AppColors.kMainScreenNewVersionButtonText,
                                              fontWeight: FontWeight.w700,
                                              fontSize: AppDimensions.defaultSize * 16),
                                        )),
                                  ),
                                  SizedBox(
                                    width: AppDimensions.getDimensions(requiredWidth: 10),
                                  ),
                                  Container(
                                    height: AppDimensions.getDimensions(requiredHeight: 48),
                                    width: AppDimensions.getDimensions(requiredWidth: 136),
                                    clipBehavior: Clip.antiAliasWithSaveLayer,
                                    decoration:
                                        BoxDecoration(borderRadius: BorderRadius.circular(10)),
                                    child: MaterialButton(
                                        color: AppColors.kMainButton,
                                        shape: const RoundedRectangleBorder(),
                                        onPressed: () {
                                          Navigator.pushReplacementNamed(
                                              context, RoutesManager.removeAssistantOfTeacherDone);
                                        },
                                        child: Text(
                                          AppStrings.kActualDeleteAccount,
                                          style: TextStyle(
                                              fontFamily: 'Almarai',
                                              color: AppColors.kMainTextWhite,
                                              fontWeight: FontWeight.w700,
                                              fontSize: AppDimensions.defaultSize * 16),
                                        )),
                                  ),
                                  SizedBox(
                                    width: AppDimensions.getDimensions(requiredWidth: 15),
                                  )
                                ]),
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  },
                  child: Image.asset(
                    AppAssets.kRemoveGroupsScreen,
                    height: AppDimensions.getDimensions(requiredHeight: 18),
                    width: AppDimensions.getDimensions(requiredWidth: 18),
                  ),
                ),
              ),
            ),
            const Spacer(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MainTextBlack(
                  myText: AppStrings.kAssistantNameAssistantOfTeacher,
                  fontSize: AppDimensions.defaultSize * 16,
                ),
                SizedBox(
                  height: AppDimensions.getDimensions(requiredHeight: 13),
                ),
                Row(
                  children: [
                    MainTextGrey(
                      myText: AppStrings.kAssistantEmailAssistantOfTeacher,
                      fontSize: AppDimensions.defaultSize * 14,
                    ),
                    SizedBox(
                      width: AppDimensions.getDimensions(requiredWidth: 3),
                    ),
                    Image.asset(
                      AppAssets.kEmail,
                      height: AppDimensions.getDimensions(requiredHeight: 20),
                      width: AppDimensions.getDimensions(requiredWidth: 20),
                    )
                  ],
                ),
                SizedBox(
                  height: AppDimensions.getDimensions(requiredHeight: 9),
                ),
                Row(
                  children: [
                    MainTextGrey(
                      myText: AppStrings.kAssistantNumberAssistantOfTeacher,
                      fontSize: AppDimensions.defaultSize * 14,
                    ),
                    SizedBox(
                      width: AppDimensions.getDimensions(requiredWidth: 3),
                    ),
                    Image.asset(
                      AppAssets.kCallMeMainScreen,
                      height: AppDimensions.getDimensions(requiredHeight: 20),
                      width: AppDimensions.getDimensions(requiredWidth: 20),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
