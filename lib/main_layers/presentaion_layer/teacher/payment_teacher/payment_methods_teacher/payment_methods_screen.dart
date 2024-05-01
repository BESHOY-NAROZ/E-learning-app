import 'package:assiut_project/core/app_constants/app_colors.dart';
import 'package:assiut_project/core/app_constants/app_strings.dart';
import 'package:assiut_project/core/app_dimensions.dart';
import 'package:assiut_project/core/app_routes.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/custom_widgets/main_app_bar.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/custom_widgets/main_button_red.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/custom_widgets/main_text_black.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/custom_widgets/main_text_grey.dart';
import 'package:flutter/material.dart';

import 'payment_methods_list.dart';

class PaymentMethodsTeacher extends StatelessWidget {
  const PaymentMethodsTeacher({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context: context, designHeight: 778, designWidth: 360);
    return Scaffold(
      body: Column(
        children: [
          const MainAppBar(
            designHeight: 1006,
            designWidth: 360,
            myTitle: AppStrings.kPaymentProcessPayment,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 26),
                    ),
                    MainTextBlack(
                      myText: AppStrings.kPaymentMethodPayment,
                      fontSize: AppDimensions.defaultSize * 16,
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 6),
                    ),
                    MainTextGrey(
                      myText: AppStrings.kChoosePaymentMethodPayment,
                      color: AppColors.kMainGery7A,
                      fontSize: AppDimensions.defaultSize * 12,
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 18),
                    ),
                    const PaymentMethodsList(),
                  ],
                ),
              ),
            ),
          ),
          Container(
            height: AppDimensions.getDimensions(requiredHeight: 128),
            width: AppDimensions.getDimensions(requiredWidth: 360),
            padding: const EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
              color: AppColors.kMainTextWhite,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withAlpha(20),
                  spreadRadius: 3,
                  blurRadius: 7,
                  offset: const Offset(0,
                      -7), // changes position of shadow, negative value on y makes it appering on the top
                ),
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    MainTextGrey(
                      myText: AppStrings.kTotalPricesPayment,
                      color: AppColors.kMainGery8D,
                      fontSize: AppDimensions.defaultSize * 10,
                    ),
                    Spacer(),
                    MainTextGrey(
                      myText: AppStrings.kMajorPricePayment,
                      color: AppColors.kMainGery8D,
                      fontSize: AppDimensions.defaultSize * 12,
                    )
                  ],
                ),
                Row(
                  children: [
                    MainTextBlack(
                      myText: AppStrings.kActualTotalPricesPayment,
                      fontSize: AppDimensions.defaultSize * 20,
                    ),
                    SizedBox(
                      width: AppDimensions.getDimensions(requiredWidth: 3),
                    ),
                    MainTextBlack(
                      myText: AppStrings.kEGPPayment,
                      fontSize: AppDimensions.defaultSize * 10,
                    )
                  ],
                ),
                SizedBox(
                  height: AppDimensions.getDimensions(requiredHeight: 10),
                ),
                MainButtonRed(
                  buttonName: AppStrings.kContinuePayment,
                  onPressed: () {
                    if (PaymentMethodsList.myIndex == 0) {
                      Navigator.pushNamed(context, RoutesManager.fawryDoneTeacher);
                    }
                  },
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
