import 'package:assiut_project/core/app_constants/app_assets.dart';
import 'package:assiut_project/core/app_constants/app_colors.dart';
import 'package:assiut_project/core/app_constants/app_strings.dart';
import 'package:assiut_project/core/app_dimensions.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/custom_widgets/main_app_bar.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/custom_widgets/main_text_black.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/custom_widgets/main_text_blue.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/custom_widgets/main_text_grey.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/custom_widgets/separator.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/custom_widgets/text_form_filed.dart';
import 'package:assiut_project/main_layers/presentaion_layer/teacher/payment_teacher/shared_payment_teacher/bottom_view_payment.dart';
import 'package:flutter/material.dart';

import 'big_container_payment.dart';

class PaymentAfterDiscountTeacher extends StatelessWidget {
  const PaymentAfterDiscountTeacher({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context: context, designHeight: 778, designWidth: 360);
    return Scaffold(
      body: Column(
        children: [
          const MainAppBar(
            designHeight: 1006,
            designWidth: 360,
            myTitle: AppStrings.kAppbarPayment,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 28),
                    ),
                    MainTextBlack(
                      myText: AppStrings.kOrdersPayment,
                      fontSize: AppDimensions.defaultSize * 16,
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 5),
                    ),
                    MainTextGrey(
                      myText: AppStrings.kConfirmationPayment,
                      color: AppColors.kMainGery7A,
                      fontSize: AppDimensions.defaultSize * 12,
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 12),
                    ),
                    Container(
                      height: AppDimensions.getDimensions(requiredHeight: 81),
                      width: AppDimensions.getDimensions(requiredWidth: 320),
                      padding: EdgeInsets.symmetric(
                          horizontal: AppDimensions.getDimensions(requiredWidth: 10)),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8), color: AppColors.kMainGeryF6),
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
                              MainTextBlack(
                                myText: AppStrings.kSubjectPayment,
                                fontSize: AppDimensions.defaultSize * 16,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: AppDimensions.getDimensions(requiredHeight: 5),
                          ),
                          Row(
                            children: [
                              MainTextBlue(
                                myText: AppStrings.kPricePayment,
                                fontSize: AppDimensions.defaultSize * 30,
                              ),
                              SizedBox(
                                width: AppDimensions.getDimensions(requiredWidth: 3),
                              ),
                              MainTextBlue(
                                myText: AppStrings.kEGPPayment,
                                fontSize: AppDimensions.defaultSize * 14,
                              ),
                              const Spacer(),
                              Column(
                                children: [
                                  MainTextGrey(
                                    myText: AppStrings.kClassPayment,
                                    fontSize: AppDimensions.defaultSize * 10,
                                    color: AppColors.kMainGery8D,
                                  ),
                                  MainTextGrey(
                                    myText: AppStrings.kSemesterPayment,
                                    fontSize: AppDimensions.defaultSize * 10,
                                    color: AppColors.kMainGery8D,
                                  ),
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 22),
                    ),
                    const BigContainerPaymentTeacher(),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 22),
                    ),
                    MainTextBlack(
                      myText: AppStrings.kTotalPricePayment,
                      fontSize: AppDimensions.defaultSize * 16,
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 25),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: AppDimensions.getDimensions(requiredHeight: 2),
                          width: AppDimensions.getDimensions(requiredWidth: 94),
                          color: AppColors.kMainGery8D,
                        ),
                        Row(
                          children: [
                            MainTextGrey(
                              myText: AppStrings.kDiscountCodePayment,
                              color: AppColors.kMainGery7A,
                              fontSize: AppDimensions.defaultSize * 12,
                            ),
                            SizedBox(
                              width: AppDimensions.getDimensions(requiredWidth: 5),
                            ),
                            Image.asset(
                              AppAssets.kTicket,
                              height: AppDimensions.getDimensions(requiredHeight: 24),
                              width: AppDimensions.getDimensions(requiredWidth: 24),
                            )
                          ],
                        ),
                        Container(
                          height: AppDimensions.getDimensions(requiredHeight: 2),
                          width: AppDimensions.getDimensions(requiredWidth: 94),
                          color: AppColors.kMainGery8D,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 13),
                    ),
                    CustomTextFormFiled(
                      hintText: AppStrings.kActualDiscountCodePayment,
                      textDirection: TextDirection.rtl,
                      prefixIcon: Icon(Icons.check_circle_rounded, color: AppColors.kMainGreen67),
                      enabled: false,
                      borderColor: AppColors.kMainGreen67,
                      hintStyle: TextStyle(
                        fontSize: AppDimensions.defaultSize * 14,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Almarai',
                        color: AppColors.kMainGreen67,
                      ),
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 25),
                    ),
                    MainTextBlack(
                      myText: AppStrings.kUsePointsCodePayment,
                      fontSize: AppDimensions.defaultSize * 16,
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 8),
                    ),
                    MainTextBlue(
                      myText: AppStrings.kDiscountPayment,
                      color: AppColors.kMainBlueAA,
                      fontSize: AppDimensions.defaultSize * 16,
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 35),
                    ),
                    const Separator(),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 35),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const BottomViewPayment()
        ],
      ),
    );
  }
}
