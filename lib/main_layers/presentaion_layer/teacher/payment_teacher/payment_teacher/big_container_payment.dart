import 'package:assiut_project/core/app_constants/app_assets.dart';
import 'package:assiut_project/core/app_constants/app_colors.dart';
import 'package:assiut_project/core/app_constants/app_strings.dart';
import 'package:assiut_project/core/app_dimensions.dart';
import 'package:assiut_project/core/app_routes.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_add_small_button.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_button_blue.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_button_grey.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_text_black.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_text_blue.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_text_grey.dart';
import 'package:flutter/material.dart';

class BigContainerPaymentTeacher extends StatelessWidget {
  const BigContainerPaymentTeacher({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context: context, designHeight: 778, designWidth: 360);

    return Container(
      height: AppDimensions.getDimensions(requiredHeight: 285),
      width: AppDimensions.getDimensions(requiredWidth: 320),
      padding: EdgeInsets.symmetric(horizontal: AppDimensions.getDimensions(requiredWidth: 10)),
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(8), color: AppColors.kMainGeryF6),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Image.asset(
                AppAssets.kClose,
                height: AppDimensions.getDimensions(requiredHeight: 20),
                width: AppDimensions.getDimensions(requiredWidth: 20),
              ),
              const Spacer(),
              const MainTextBlack(
                myText: AppStrings.kFirstTestPayment,
                fontSize: 16,
              ),
            ],
          ),
          SizedBox(
            height: AppDimensions.getDimensions(requiredHeight: 8),
          ),
          Container(
            height: AppDimensions.getDimensions(requiredHeight: 95),
            width: AppDimensions.getDimensions(requiredWidth: 304),
            padding:
                EdgeInsets.symmetric(horizontal: AppDimensions.getDimensions(requiredWidth: 10)),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8), color: AppColors.kMainTextWhite),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    const MainTextGrey(
                      myText: AppStrings.kGroupsPayment,
                      fontSize: 10,
                      color: AppColors.kMainGery8D,
                    ),
                    SizedBox(
                      width: AppDimensions.getDimensions(requiredWidth: 3),
                    ),
                    const MainTextBlue(
                      myText: AppStrings.kActualGroupsPayment,
                      fontSize: 30,
                    ),
                    const Spacer(),
                    const MainTextBlack(
                      myText: AppStrings.kGroupsNumberPayment,
                      fontSize: 16,
                    )
                  ],
                ),
                SizedBox(
                  height: AppDimensions.getDimensions(requiredHeight: 8),
                ),
                Row(
                  children: [
                    MainAddSmallButton(
                      myText: AppStrings.kAddGroupsPayment,
                      requiredWidth: 109,
                      requiredHeight: 30,
                      onPressed: () {
                        Navigator.pushNamed(context, RoutesManager.selectGroupPaymentTeacher);
                      },
                    ),
                    const Spacer(),
                    const MainTextGrey(
                      myText: AppStrings.kActualGroupsNumberPayment,
                      fontSize: 10,
                      color: AppColors.kMainGery8D,
                    )
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: AppDimensions.getDimensions(requiredHeight: 12),
          ),
          Row(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      const MainTextBlue(
                        myText: AppStrings.kActualStudentsNumberPayment,
                        color: AppColors.kMainBlueC4,
                        textDirection: TextDirection.rtl,
                        fontSize: 12,
                      ),
                      SizedBox(
                        width: AppDimensions.getDimensions(requiredWidth: 3),
                      ),
                      const MainTextGrey(
                        myText: AppStrings.kStudentsNumberPayment,
                        color: AppColors.kMainGery7A,
                        textDirection: TextDirection.rtl,
                        fontSize: 10,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: AppDimensions.getDimensions(requiredHeight: 3),
                  ),
                  Row(
                    children: [
                      const MainTextBlue(
                        myText: AppStrings.kActualStudentsNumberPayment,
                        color: AppColors.kMainBlueC4,
                        fontSize: 12,
                        textDirection: TextDirection.rtl,
                      ),
                      SizedBox(
                        width: AppDimensions.getDimensions(requiredWidth: 3),
                      ),
                      const MainTextGrey(
                        myText: AppStrings.kStudentsPayedNumberPayment,
                        color: AppColors.kMainGery7A,
                        textDirection: TextDirection.rtl,
                        fontSize: 10,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: AppDimensions.getDimensions(requiredHeight: 3),
                  ),
                  Row(
                    children: [
                      const MainTextBlue(
                        myText: AppStrings.kActualStudentsPayedNumberPayment,
                        color: AppColors.kMainBlueC4,
                        fontSize: 12,
                        textDirection: TextDirection.rtl,
                      ),
                      SizedBox(
                        width: AppDimensions.getDimensions(requiredWidth: 3),
                      ),
                      const MainTextGrey(
                        myText: AppStrings.kStudentsWillPayNumberPayment,
                        color: AppColors.kMainGery7A,
                        textDirection: TextDirection.rtl,
                        fontSize: 10,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: AppDimensions.getDimensions(requiredHeight: 14),
                  ),
                  const MainTextGrey(
                    myText: AppStrings.kCostPayment,
                    color: AppColors.kMainGery8D,
                    fontSize: 10,
                  ),
                  SizedBox(
                    height: AppDimensions.getDimensions(requiredHeight: 2),
                  ),
                  Row(
                    children: [
                      const MainTextBlue(
                        myText: AppStrings.kPricePayment,
                        fontSize: 30,
                      ),
                      SizedBox(
                        width: AppDimensions.getDimensions(requiredWidth: 3),
                      ),
                      const MainTextBlue(
                        myText: AppStrings.kEGPPayment,
                        fontSize: 14,
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                width: AppDimensions.getDimensions(
                    requiredWidth: AppDimensions.getDimensions(requiredWidth: 15)),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MainButtonBlue(
                    buttonName: AppStrings.kFirstGroupPayment,
                    requiredHeight: 34,
                    requiredWidth: 98,
                    onPressed: () {},
                  ),
                  SizedBox(
                    height: AppDimensions.getDimensions(requiredHeight: 5),
                  ),
                  MainButtonGrey(
                    buttonName: AppStrings.kSecondGroupPayment,
                    requiredHeight: 34,
                    requiredWidth: 98,
                    onPressed: () {},
                  ),
                  SizedBox(
                    height: AppDimensions.getDimensions(requiredHeight: 5),
                  ),
                  MainButtonGrey(
                    buttonName: AppStrings.kThirdGroupPayment,
                    requiredHeight: 34,
                    requiredWidth: 98,
                    onPressed: () {},
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
