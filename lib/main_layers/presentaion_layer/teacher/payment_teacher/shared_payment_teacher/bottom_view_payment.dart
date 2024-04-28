import 'package:assiut_project/core/app_constants/app_colors.dart';
import 'package:assiut_project/core/app_constants/app_strings.dart';
import 'package:assiut_project/core/app_dimensions.dart';
import 'package:assiut_project/core/app_routes.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_button_red.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_text_black.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_text_grey.dart';
import 'package:flutter/material.dart';

class BottomViewPayment extends StatelessWidget {
  const BottomViewPayment({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context: context, designHeight: 778, designWidth: 360);

    return Container(
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
          const Row(
            children: [
              MainTextGrey(
                myText: AppStrings.kTotalPricesPayment,
                color: AppColors.kMainGery8D,
                fontSize: 10,
              ),
              Spacer(),
              MainTextGrey(
                myText: AppStrings.kMajorPricePayment,
                color: AppColors.kMainGery8D,
                fontSize: 12,
              )
            ],
          ),
          Row(
            children: [
              const MainTextBlack(
                myText: AppStrings.kActualTotalPricesPayment,
                fontSize: 20,
              ),
              SizedBox(
                width: AppDimensions.getDimensions(requiredWidth: 3),
              ),
              const MainTextBlack(
                myText: AppStrings.kEGPPayment,
                fontSize: 10,
              )
            ],
          ),
          SizedBox(
            height: AppDimensions.getDimensions(requiredHeight: 10),
          ),
          MainButtonRed(
            buttonName: AppStrings.kContinuePayment,
            onPressed: () {
              Navigator.pushNamed(context, RoutesManager.paymentMethodsTeacher);
            },
          )
        ],
      ),
    );
  }
}
