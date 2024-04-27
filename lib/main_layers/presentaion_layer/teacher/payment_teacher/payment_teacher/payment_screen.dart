import 'package:assiut_project/core/app_constants/app_assets.dart';
import 'package:assiut_project/core/app_constants/app_colors.dart';
import 'package:assiut_project/core/app_constants/app_strings.dart';
import 'package:assiut_project/core/app_dimensions.dart';
import 'package:assiut_project/core/app_routes.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_app_bar.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_button_red.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_text_black.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_text_blue.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_text_grey.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/separator.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/text_form_filed.dart';
import 'package:assiut_project/main_layers/presentaion_layer/teacher/payment_teacher/shared_payment_teacher/bottom_view_payment.dart';
import 'package:flutter/material.dart';

import 'big_container_payment.dart';

class PaymentTeacher extends StatelessWidget {
  const PaymentTeacher({Key? key}) : super(key: key);

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
                    const MainTextBlack(
                      myText: AppStrings.kOrdersPayment,
                      fontSize: 16,
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 5),
                    ),
                    const MainTextGrey(
                      myText: AppStrings.kConfirmationPayment,
                      color: AppColors.kMainGery7A,
                      fontSize: 12,
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
                              const MainTextBlack(
                                myText: AppStrings.kSubjectPayment,
                                fontSize: 16,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: AppDimensions.getDimensions(requiredHeight: 5),
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
                              const Spacer(),
                              const Column(
                                children: [
                                  MainTextGrey(
                                    myText: AppStrings.kClassPayment,
                                    fontSize: 10,
                                    color: AppColors.kMainGery8D,
                                  ),
                                  MainTextGrey(
                                    myText: AppStrings.kSemesterPayment,
                                    fontSize: 10,
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
                    const MainTextBlack(
                      myText: AppStrings.kTotalPricePayment,
                      fontSize: 16,
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
                            const MainTextGrey(
                              myText: AppStrings.kDiscountCodePayment,
                              color: AppColors.kMainGery7A,
                              fontSize: 12,
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
                    const CustomTextFormFiled(
                      hintText: AppStrings.kActualDiscountCodePayment,
                      textDirection: TextDirection.rtl,
                      prefixIcon: Icon(Icons.check_circle_rounded, color: AppColors.kMainGreen67),
                      enabled: false,
                      borderColor: AppColors.kMainGreen67,
                      hintStyle: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Almarai',
                        color: AppColors.kMainGreen67,
                      ),
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 25),
                    ),
                    const Row(
                      children: [
                        MainTextGrey(
                          myText: AppStrings.kActualPointsPayment,
                          color: AppColors.kMainGery8D,
                          fontSize: 12,
                        ),
                        Spacer(),
                        MainTextBlack(
                          myText: AppStrings.kUsePointsCodePayment,
                          fontSize: 16,
                        )
                      ],
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 8),
                    ),
                    const MainTextGrey(
                      myText: AppStrings.kConfirmationPayment,
                      color: AppColors.kMainGery7A,
                      fontSize: 12,
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 11),
                    ),
                    Row(
                      children: [
                        MainButtonRed(
                          buttonName: AppStrings.kExchangePointsPayment,
                          requiredWidth: 132,
                          onPressed: () {
                            Navigator.pushNamed(context, RoutesManager.discountDoneTeacher);
                          },
                        ),
                        const Spacer(),
                        Container(
                          height: AppDimensions.getDimensions(requiredHeight: 30),
                          width: AppDimensions.getDimensions(requiredWidth: 30),
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: AppColors.kMainGeryF6),
                          child: Icon(
                            Icons.remove,
                            color: AppColors.kMainGery7A,
                            size: AppDimensions.getDimensions(requiredWidth: 22),
                          ),
                        ),
                        SizedBox(
                          width: AppDimensions.getDimensions(requiredWidth: 9),
                        ),
                        const MainTextBlack(
                          myText: AppStrings.kActualExchangePointsPayment,
                          fontSize: 24,
                        ),
                        SizedBox(
                          width: AppDimensions.getDimensions(requiredWidth: 9),
                        ),
                        Container(
                          height: AppDimensions.getDimensions(requiredHeight: 30),
                          width: AppDimensions.getDimensions(requiredWidth: 30),
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: AppColors.kMainGeryF6),
                          child: Icon(
                            Icons.add,
                            color: AppColors.kMainGery7A,
                            size: AppDimensions.getDimensions(requiredWidth: 22),
                          ),
                        ),
                      ],
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
