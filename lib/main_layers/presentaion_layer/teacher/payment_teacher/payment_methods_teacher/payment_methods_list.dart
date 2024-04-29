import 'package:assiut_project/core/app_constants/app_colors.dart';
import 'package:assiut_project/core/app_constants/app_lists.dart';
import 'package:assiut_project/core/app_constants/app_strings.dart';
import 'package:assiut_project/core/app_dimensions.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_text_black.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_text_grey.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/separator.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/text_form_filed.dart';
import 'package:flutter/material.dart';

class PaymentMethodsList extends StatefulWidget {
  static int myIndex = 0;

  const PaymentMethodsList({
    super.key,
  });

  @override
  State<PaymentMethodsList> createState() => PaymentMethodsListState();
}

class PaymentMethodsListState extends State<PaymentMethodsList> {
  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context: context, designHeight: 778, designWidth: 360);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        SizedBox(
          height: AppDimensions.getDimensions(requiredHeight: 92),
          child: ListView.separated(
              padding: EdgeInsets.zero,
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    setState(() {
                      PaymentMethodsList.myIndex = index;
                    });
                  },
                  child: Container(
                    height: AppDimensions.getDimensions(requiredHeight: 92),
                    width: AppDimensions.getDimensions(requiredWidth: 101),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: PaymentMethodsList.myIndex == index
                            ? AppColors.kMainBlueC4
                            : AppColors.kMainGeryF0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          AppLists.kPaymentMethodsImagesList[index],
                          color: PaymentMethodsList.myIndex == index && index != 0
                              ? AppColors.kMainTextWhite
                              : PaymentMethodsList.myIndex != index && index != 0
                                  ? AppColors.kMainGery96
                                  : null,
                          height: AppDimensions.getDimensions(requiredHeight: 50),
                          width: AppDimensions.getDimensions(requiredWidth: 50),
                        ),
                        SizedBox(
                          height: AppDimensions.getDimensions(requiredHeight: 4),
                        ),
                        MainTextGrey(
                          myText: AppLists.kPaymentMethodsList[index],
                          color: PaymentMethodsList.myIndex == index
                              ? AppColors.kMainTextWhite
                              : AppColors.kMainGery96,
                          fontSize: AppDimensions.defaultSize * 12,
                        )
                      ],
                    ),
                  ),
                );
              },
              separatorBuilder: (context, index) {
                return SizedBox(
                  width: AppDimensions.getDimensions(requiredWidth: 8),
                );
              },
              itemCount: AppLists.kPaymentMethodsList.length),
        ),
        SizedBox(
          height: AppDimensions.getDimensions(requiredHeight: 15),
        ),
        const Separator(),
        SizedBox(
          height: AppDimensions.getDimensions(requiredHeight: 13),
        ),
        MainTextBlack(
          myText: AppLists.kPaymentMethodsList[PaymentMethodsList.myIndex],
          fontSize: AppDimensions.defaultSize * 16,
        ),
        SizedBox(
          height: AppDimensions.getDimensions(requiredHeight: 12),
        ),
        MainTextGrey(
          myText: AppLists.kPaymentMethodsHintList[PaymentMethodsList.myIndex],
          color: AppColors.kMainGery7A,
          fontSize: AppDimensions.defaultSize * 12,
        ),
        SizedBox(
          height: AppDimensions.getDimensions(requiredHeight: 12),
        ),
        if (PaymentMethodsList.myIndex == 0 || PaymentMethodsList.myIndex == 1)
          CustomTextFormFiled(
            hintText: AppStrings.kExPhonePayment,
            textDirection: TextDirection.rtl,
            keyboardType: TextInputType.phone,
            hintStyle: TextStyle(
              fontSize: AppDimensions.defaultSize * 12,
              fontWeight: FontWeight.w700,
              fontFamily: 'Almarai',
              color: AppColors.kDetailsProfileEditing,
            ),
          ),
        if (PaymentMethodsList.myIndex == 2)
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              MainTextGrey(
                myText: AppStrings.kEnterNamePayment,
                color: AppColors.kMainGery7A,
                fontSize: AppDimensions.defaultSize * 12,
              ),
              SizedBox(
                height: AppDimensions.getDimensions(requiredHeight: 8),
              ),
              CustomTextFormFiled(
                hintText: AppStrings.kExampleCommon,
                textDirection: TextDirection.rtl,
                hintStyle: TextStyle(
                  fontSize: AppDimensions.defaultSize * 12,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'Almarai',
                  color: AppColors.kDetailsProfileEditing,
                ),
              ),
              SizedBox(
                height: AppDimensions.getDimensions(requiredHeight: 9),
              ),
              MainTextGrey(
                myText: AppStrings.kCardNumberPayment,
                color: AppColors.kMainGery7A,
                fontSize: AppDimensions.defaultSize * 12,
              ),
              SizedBox(
                height: AppDimensions.getDimensions(requiredHeight: 8),
              ),
              CustomTextFormFiled(
                hintText: AppStrings.kActualCardNumberPayment,
                textDirection: TextDirection.rtl,
                keyboardType: TextInputType.number,
                hintStyle: TextStyle(
                  fontSize: AppDimensions.defaultSize * 12,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'Almarai',
                  color: AppColors.kDetailsProfileEditing,
                ),
              ),
              SizedBox(
                height: AppDimensions.getDimensions(requiredHeight: 9),
              ),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      MainTextGrey(
                        myText: AppStrings.kExpiredDatePayment,
                        color: AppColors.kMainGery7A,
                        fontSize: AppDimensions.defaultSize * 12,
                      ),
                      SizedBox(
                        height: AppDimensions.getDimensions(requiredHeight: 8),
                      ),
                      CustomTextFormFiled(
                        hintText: AppStrings.kActualExpiredDatePayment,
                        width: 150,
                        textDirection: TextDirection.rtl,
                        keyboardType: TextInputType.number,
                        hintStyle: TextStyle(
                          fontSize: AppDimensions.defaultSize * 12,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'Almarai',
                          color: AppColors.kDetailsProfileEditing,
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      MainTextGrey(
                        myText: AppStrings.kCVVPayment,
                        color: AppColors.kMainGery7A,
                        textDirection: TextDirection.rtl,
                        fontSize: AppDimensions.defaultSize * 12,
                      ),
                      SizedBox(
                        height: AppDimensions.getDimensions(requiredHeight: 8),
                      ),
                      CustomTextFormFiled(
                        hintText: AppStrings.kActualCVVPayment,
                        width: 150,
                        textDirection: TextDirection.rtl,
                        keyboardType: TextInputType.number,
                        hintStyle: TextStyle(
                          fontSize: AppDimensions.defaultSize * 12,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'Almarai',
                          color: AppColors.kDetailsProfileEditing,
                        ),
                      ),
                    ],
                  ),
                ],
              )
            ],
          )
      ],
    );
  }
}
