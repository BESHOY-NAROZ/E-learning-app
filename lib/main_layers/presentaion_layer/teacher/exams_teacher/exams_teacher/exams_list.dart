import 'package:assiut_project/core/app_constants/app_assets.dart';
import 'package:assiut_project/core/app_constants/app_colors.dart';
import 'package:assiut_project/core/app_constants/app_strings.dart';
import 'package:assiut_project/core/app_dimensions.dart';
import 'package:assiut_project/core/app_routes.dart';
import 'package:assiut_project/core/app_toast.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_text_black.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_text_grey.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_text_white.dart';
import 'package:flutter/material.dart';

class ExamsListTeacher extends StatelessWidget {
  const ExamsListTeacher({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context: context, designHeight: 778, designWidth: 360);
    return Container(
      height: AppDimensions.getDimensions(requiredHeight: 120),
      width: AppDimensions.getDimensions(requiredWidth: 320),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8), color: AppColors.kSentExamsContainerGroups),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          SizedBox(
            height: AppDimensions.getDimensions(requiredHeight: 5),
          ),
          Padding(
            padding: EdgeInsets.only(right: AppDimensions.getDimensions(requiredWidth: 9)),
            child: MainTextBlack(
              myText: AppStrings.kExamsSentBlackTextGroups,
              fontSize: AppDimensions.defaultSize * 16,
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(
            height: AppDimensions.getDimensions(requiredHeight: 5),
          ),
          Padding(
            padding: EdgeInsets.only(right: AppDimensions.getDimensions(requiredWidth: 9)),
            child: Text(
              AppStrings.kExamsSentGreyTextGroups,
              style: TextStyle(
                  fontSize: AppDimensions.defaultSize * 12,
                  fontWeight: FontWeight.w700,
                  color: AppColors.kSentGreyTextGroups),
            ),
          ),
          const Spacer(),
          Container(
            padding: EdgeInsets.zero,
            width: double.infinity,
            height: AppDimensions.getDimensions(requiredHeight: 40),
            decoration: const BoxDecoration(
                color: AppColors.kBottomContainerGroups,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(8), bottomRight: Radius.circular(8))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, RoutesManager.selectGroupTeacher);
                  },
                  child: Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
                    MainTextWhite(
                      myText: AppStrings.kSentExams,
                      fontSize: AppDimensions.defaultSize * 10,
                      fontWeight: FontWeight.w700,
                    ),
                    SizedBox(
                      width: AppDimensions.getDimensions(requiredWidth: 3),
                    ),
                    SizedBox(
                        width: AppDimensions.getDimensions(requiredWidth: 14),
                        height: AppDimensions.getDimensions(requiredHeight: 14),
                        child: Image.asset(
                          AppAssets.kVector3HomeScreen,
                          color: AppColors.kMainTextWhite,
                        )),
                  ]),
                ),

                InkWell(
                  onTap: () {
                    showModalBottomSheet(
                      context: context,
                      builder: (context) {
                        return Container(
                          width: AppDimensions.getDimensions(requiredWidth: 360),
                          height: AppDimensions.getDimensions(requiredHeight: 190),
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
                                  myText: AppStrings.kBottomSheetMainExams,
                                  fontSize: AppDimensions.defaultSize * 18,
                                ),
                                SizedBox(
                                  height: AppDimensions.getDimensions(requiredHeight: 14),
                                ),
                                MainTextGrey(
                                  myText: AppStrings.kBottomSheetHintExams,
                                  color: AppColors.kDetailsProfileEditing,
                                  fontSize: AppDimensions.defaultSize * 14,
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
                                          Navigator.pop(context);
                                          MyToast.showMyToast(
                                            context: context,
                                            myMessage: AppStrings.kBottomSheetToastExams,
                                            myIcon: Icons.close_rounded,
                                          );
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
                  child: Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
                    MainTextWhite(
                      myText: AppStrings.kDeleteExams,
                      fontSize: AppDimensions.defaultSize * 10,
                      fontWeight: FontWeight.w700,
                    ),
                    SizedBox(
                      width: AppDimensions.getDimensions(requiredWidth: 3),
                    ),
                    SizedBox(
                        width: AppDimensions.getDimensions(requiredWidth: 14),
                        height: AppDimensions.getDimensions(requiredHeight: 14),
                        child: Image.asset(
                          AppAssets.kRemoveGroupsScreen,
                          color: AppColors.kMainTextWhite,
                        )),
                  ]),
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, RoutesManager.actualExamTeacher);
                  },
                  child: Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
                    MainTextWhite(
                      myText: AppStrings.kEditExams,
                      fontSize: AppDimensions.defaultSize * 10,
                      fontWeight: FontWeight.w700,
                    ),
                    SizedBox(
                      width: AppDimensions.getDimensions(requiredWidth: 3),
                    ),
                    SizedBox(
                        width: AppDimensions.getDimensions(requiredWidth: 14),
                        height: AppDimensions.getDimensions(requiredHeight: 14),
                        child: Image.asset(AppAssets.kEdit)),
                  ]),
                ),
                // SizedBox(
                //   width: AppDimensions.getDimensions(requiredWidth: 45),
                // ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
