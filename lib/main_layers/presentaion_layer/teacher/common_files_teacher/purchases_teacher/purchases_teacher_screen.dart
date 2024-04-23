import 'package:assiut_project/core/app_constants/app_colors.dart';
import 'package:assiut_project/core/app_constants/app_strings.dart';
import 'package:assiut_project/core/app_dimensions.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_app_bar.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_text_black.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_text_grey.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_text_white.dart';
import 'package:flutter/material.dart';

class PurchasesTeacher extends StatelessWidget {
  const PurchasesTeacher({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context: context, designHeight: 826, designWidth: 360);
    return Scaffold(
      body: Column(
        children: [
          const MainAppBar(
            designHeight: 1006,
            designWidth: 360,
            myTitle: AppStrings.kAppBarPurchases,
          ),
          SizedBox(
            height: AppDimensions.getDimensions(requiredHeight: 18),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const MainTextBlack(
                      myText: AppStrings.kLaterPurchases,
                      textDirection: TextDirection.rtl,
                      fontSize: 18,
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 7),
                    ),
                    Container(
                      height: AppDimensions.getDimensions(requiredHeight: 281),
                      width: AppDimensions.getDimensions(requiredWidth: 320),
                      decoration: BoxDecoration(
                        color: AppColors.kContainerCommon,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: AppDimensions.getDimensions(requiredWidth: 10)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const MainTextGrey(
                                  myText: AppStrings.kDatePurchases,
                                  color: AppColors.kSentGreyTextGroups,
                                  fontSize: 10,
                                ),
                                SizedBox(
                                  width: AppDimensions.getDimensions(requiredWidth: 5),
                                ),
                                const MainTextBlack(
                                  myText: AppStrings.kSaturdayPurchases,
                                  fontSize: 16,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: AppDimensions.getDimensions(requiredHeight: 10),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: AppDimensions.getDimensions(requiredWidth: 12)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                const Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    MainTextBlack(
                                      myText: AppStrings.kPricePurchases,
                                      fontSize: 10,
                                    ),
                                    MainTextGrey(
                                      myText: AppStrings.kDotsPurchases,
                                      color: AppColors.kSentGreyTextGroups,
                                      fontSize: 10,
                                    ),
                                    MainTextGrey(
                                      myText: AppStrings.kActualPurchases,
                                      color: AppColors.kMainGery96,
                                      fontSize: 10,
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: AppDimensions.getDimensions(requiredWidth: 6)),
                                  child: const MainTextGrey(
                                    myText: AppStrings.kClassPurchases,
                                    color: AppColors.kMainGery96,
                                    fontSize: 10,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: AppDimensions.getDimensions(requiredHeight: 6),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: AppDimensions.getDimensions(requiredWidth: 12)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                const Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    MainTextBlack(
                                      myText: AppStrings.kPricePurchases,
                                      fontSize: 10,
                                    ),
                                    MainTextGrey(
                                      myText: AppStrings.kDotsPurchases,
                                      color: AppColors.kSentGreyTextGroups,
                                      fontSize: 10,
                                    ),
                                    MainTextGrey(
                                      myText: AppStrings.kActualPurchases,
                                      color: AppColors.kMainGery96,
                                      fontSize: 10,
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: AppDimensions.getDimensions(requiredWidth: 6)),
                                  child: const MainTextGrey(
                                    myText: AppStrings.kClassPurchases,
                                    color: AppColors.kMainGery96,
                                    fontSize: 10,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: AppDimensions.getDimensions(requiredHeight: 6),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: AppDimensions.getDimensions(requiredWidth: 12)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                const Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    MainTextBlack(
                                      myText: AppStrings.kPricePurchases,
                                      fontSize: 10,
                                    ),
                                    MainTextGrey(
                                      myText: AppStrings.kDotsPurchases,
                                      color: AppColors.kSentGreyTextGroups,
                                      fontSize: 10,
                                    ),
                                    MainTextGrey(
                                      myText: AppStrings.kActualPurchases,
                                      color: AppColors.kMainGery96,
                                      fontSize: 10,
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: AppDimensions.getDimensions(requiredWidth: 6)),
                                  child: const MainTextGrey(
                                    myText: AppStrings.kClassPurchases,
                                    color: AppColors.kMainGery96,
                                    fontSize: 10,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const Spacer(),
                          Container(
                            height: AppDimensions.getDimensions(requiredHeight: 118),
                            width: AppDimensions.getDimensions(requiredWidth: 320),
                            decoration: const BoxDecoration(
                              color: AppColors.kCircleContainerSignUp,
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(10),
                                  bottomRight: Radius.circular(10)),
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: AppDimensions.getDimensions(requiredWidth: 12)),
                                  child: const Row(
                                    children: [
                                      MainTextWhite(
                                        myText: AppStrings.kRefPurchases,
                                        fontSize: 10,
                                        fontWeight: FontWeight.w700,
                                      ),
                                      Spacer(),
                                      MainTextWhite(
                                        myText: AppStrings.kBillPurchases,
                                        fontSize: 10,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: AppDimensions.getDimensions(requiredHeight: 5),
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      flex: 3,
                                      child: Container(
                                        height: AppDimensions.getDimensions(requiredHeight: 2),
                                        color: AppColors.kMainTextWhite,
                                      ),
                                    ),
                                    Container(
                                      height: AppDimensions.getDimensions(requiredHeight: 24),
                                      width: AppDimensions.getDimensions(requiredWidth: 117),
                                      decoration: BoxDecoration(
                                          color: AppColors.kMainTextWhite,
                                          borderRadius: BorderRadius.circular(35)),
                                      child: Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            const MainTextBlack(
                                              myText: AppStrings.kCreditCardPurchases,
                                              fontSize: 12,
                                            ),
                                            SizedBox(
                                              width: AppDimensions.getDimensions(requiredWidth: 5),
                                            ),
                                            const Icon(Icons.credit_card)
                                          ]),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Container(
                                        height: AppDimensions.getDimensions(requiredHeight: 2),
                                        color: AppColors.kMainTextWhite,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: AppDimensions.getDimensions(requiredHeight: 10),
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: AppDimensions.getDimensions(requiredWidth: 12)),
                                  child: const Row(
                                    children: [
                                      MainTextWhite(
                                        myText: AppStrings.kTotalCostPurchases,
                                        fontSize: 10,
                                        fontWeight: FontWeight.w700,
                                      ),
                                      Spacer(),
                                      MainTextWhite(
                                        myText: AppStrings.kCostPurchases,
                                        fontSize: 10,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: AppDimensions.getDimensions(requiredWidth: 12)),
                                  child: const Row(
                                    children: [
                                      MainTextWhite(
                                        myText: AppStrings.kActualCostPurchases,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w700,
                                      ),
                                      MainTextWhite(
                                        myText: AppStrings.kEGPurchases,
                                        fontSize: 10,
                                        fontWeight: FontWeight.w700,
                                      ),
                                      Spacer(),
                                      MainTextWhite(
                                        myText: AppStrings.kDiscountPurchases,
                                        fontSize: 10,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 16),
                    ),
                    Container(
                      height: AppDimensions.getDimensions(requiredHeight: 281),
                      width: AppDimensions.getDimensions(requiredWidth: 320),
                      decoration: BoxDecoration(
                        color: AppColors.kContainerCommon,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: AppDimensions.getDimensions(requiredWidth: 10)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const MainTextGrey(
                                  myText: AppStrings.kDatePurchases,
                                  color: AppColors.kSentGreyTextGroups,
                                  fontSize: 10,
                                ),
                                SizedBox(
                                  width: AppDimensions.getDimensions(requiredWidth: 5),
                                ),
                                const MainTextBlack(
                                  myText: AppStrings.kSaturdayPurchases,
                                  fontSize: 16,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: AppDimensions.getDimensions(requiredHeight: 10),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: AppDimensions.getDimensions(requiredWidth: 12)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                const Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    MainTextBlack(
                                      myText: AppStrings.kPricePurchases,
                                      fontSize: 10,
                                    ),
                                    MainTextGrey(
                                      myText: AppStrings.kDotsPurchases,
                                      color: AppColors.kSentGreyTextGroups,
                                      fontSize: 10,
                                    ),
                                    MainTextGrey(
                                      myText: AppStrings.kActualPurchases,
                                      color: AppColors.kMainGery96,
                                      fontSize: 10,
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: AppDimensions.getDimensions(requiredWidth: 6)),
                                  child: const MainTextGrey(
                                    myText: AppStrings.kClassPurchases,
                                    color: AppColors.kMainGery96,
                                    fontSize: 10,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: AppDimensions.getDimensions(requiredHeight: 6),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: AppDimensions.getDimensions(requiredWidth: 12)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                const Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    MainTextBlack(
                                      myText: AppStrings.kPricePurchases,
                                      fontSize: 10,
                                    ),
                                    MainTextGrey(
                                      myText: AppStrings.kDotsPurchases,
                                      color: AppColors.kSentGreyTextGroups,
                                      fontSize: 10,
                                    ),
                                    MainTextGrey(
                                      myText: AppStrings.kActualPurchases,
                                      color: AppColors.kMainGery96,
                                      fontSize: 10,
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: AppDimensions.getDimensions(requiredWidth: 6)),
                                  child: const MainTextGrey(
                                    myText: AppStrings.kClassPurchases,
                                    color: AppColors.kMainGery96,
                                    fontSize: 10,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: AppDimensions.getDimensions(requiredHeight: 6),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: AppDimensions.getDimensions(requiredWidth: 12)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                const Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    MainTextBlack(
                                      myText: AppStrings.kPricePurchases,
                                      fontSize: 10,
                                    ),
                                    MainTextGrey(
                                      myText: AppStrings.kDotsPurchases,
                                      color: AppColors.kSentGreyTextGroups,
                                      fontSize: 10,
                                    ),
                                    MainTextGrey(
                                      myText: AppStrings.kActualPurchases,
                                      color: AppColors.kMainGery96,
                                      fontSize: 10,
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: AppDimensions.getDimensions(requiredWidth: 6)),
                                  child: const MainTextGrey(
                                    myText: AppStrings.kClassPurchases,
                                    color: AppColors.kMainGery96,
                                    fontSize: 10,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const Spacer(),
                          Container(
                            height: AppDimensions.getDimensions(requiredHeight: 118),
                            width: AppDimensions.getDimensions(requiredWidth: 320),
                            decoration: const BoxDecoration(
                              color: AppColors.kCircleContainerSignUp,
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(10),
                                  bottomRight: Radius.circular(10)),
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: AppDimensions.getDimensions(requiredWidth: 12)),
                                  child: const Row(
                                    children: [
                                      MainTextWhite(
                                        myText: AppStrings.kRefPurchases,
                                        fontSize: 10,
                                        fontWeight: FontWeight.w700,
                                      ),
                                      Spacer(),
                                      MainTextWhite(
                                        myText: AppStrings.kBillPurchases,
                                        fontSize: 10,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: AppDimensions.getDimensions(requiredHeight: 5),
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      flex: 3,
                                      child: Container(
                                        height: AppDimensions.getDimensions(requiredHeight: 2),
                                        color: AppColors.kMainTextWhite,
                                      ),
                                    ),
                                    Container(
                                      height: AppDimensions.getDimensions(requiredHeight: 24),
                                      width: AppDimensions.getDimensions(requiredWidth: 117),
                                      decoration: BoxDecoration(
                                          color: AppColors.kMainTextWhite,
                                          borderRadius: BorderRadius.circular(35)),
                                      child: Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            const MainTextBlack(
                                              myText: AppStrings.kCreditCardPurchases,
                                              fontSize: 12,
                                            ),
                                            SizedBox(
                                              width: AppDimensions.getDimensions(requiredWidth: 5),
                                            ),
                                            const Icon(Icons.credit_card)
                                          ]),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Container(
                                        height: AppDimensions.getDimensions(requiredHeight: 2),
                                        color: AppColors.kMainTextWhite,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: AppDimensions.getDimensions(requiredHeight: 10),
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: AppDimensions.getDimensions(requiredWidth: 12)),
                                  child: const Row(
                                    children: [
                                      MainTextWhite(
                                        myText: AppStrings.kTotalCostPurchases,
                                        fontSize: 10,
                                        fontWeight: FontWeight.w700,
                                      ),
                                      Spacer(),
                                      MainTextWhite(
                                        myText: AppStrings.kCostPurchases,
                                        fontSize: 10,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: AppDimensions.getDimensions(requiredWidth: 12)),
                                  child: const Row(
                                    children: [
                                      MainTextWhite(
                                        myText: AppStrings.kActualCostPurchases,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w700,
                                      ),
                                      MainTextWhite(
                                        myText: AppStrings.kEGPurchases,
                                        fontSize: 10,
                                        fontWeight: FontWeight.w700,
                                      ),
                                      Spacer(),
                                      MainTextWhite(
                                        myText: AppStrings.kDiscountPurchases,
                                        fontSize: 10,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
