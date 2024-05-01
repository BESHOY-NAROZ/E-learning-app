import 'package:assiut_project/core/app_constants/app_assets.dart';
import 'package:assiut_project/core/app_constants/app_colors.dart';
import 'package:assiut_project/core/app_constants/app_strings.dart';
import 'package:assiut_project/core/app_dimensions.dart';
import 'package:assiut_project/core/app_toast.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/custom_widgets/main_text_black.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/custom_widgets/main_text_grey.dart';
import 'package:flutter/material.dart';

class RemoveAttachmentBottomSheet extends StatelessWidget {
  const RemoveAttachmentBottomSheet({
    super.key,
  });

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
                    height: AppDimensions.getDimensions(requiredHeight: 190),
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
                            myText: AppStrings.kMainDeleteAccount,
                            fontSize: AppDimensions.defaultSize * 18,
                          ),
                          SizedBox(
                            height: AppDimensions.getDimensions(requiredHeight: 14),
                          ),
                          MainTextGrey(
                            myText: AppStrings.kHintDeleteAccount,
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
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
                              child: MaterialButton(
                                  color: AppColors.kMainScreenNewVersionButton,
                                  shape: const RoundedRectangleBorder(),
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: Text(
                                    AppStrings.kBackDeleteAccount,
                                    style: TextStyle(
                                      fontSize: AppDimensions.defaultSize * 16,
                                      fontFamily: 'Almarai',
                                      color: AppColors.kMainScreenNewVersionButtonText,
                                      fontWeight: FontWeight.w700,
                                    ),
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
                                    MyToast.showMyToast(
                                      context: context,
                                      myMessage: AppStrings.removedDoneAttached,
                                      myIcon: Icons.close_rounded,
                                    );
                                    Navigator.pop(context);
                                  },
                                  child: Text(
                                    AppStrings.kActualDeleteAccount,
                                    style: TextStyle(
                                      fontSize: AppDimensions.defaultSize * 16,
                                      fontFamily: 'Almarai',
                                      color: AppColors.kMainTextWhite,
                                      fontWeight: FontWeight.w700,
                                    ),
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
              height: AppDimensions.getDimensions(requiredHeight: 14),
              width: AppDimensions.getDimensions(requiredWidth: 14),
            ));
      },
    );
  }
}
