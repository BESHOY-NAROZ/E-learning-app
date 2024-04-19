import 'package:assiut_project/core/app_constants/app_colors.dart';
import 'package:assiut_project/core/app_constants/app_strings.dart';
import 'package:assiut_project/core/app_dimensions.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_text_blue.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_text_grey.dart';
import 'package:flutter/material.dart';

class AccountMainContainer extends StatelessWidget {
  const AccountMainContainer({
    super.key, this.myAccount, this.myIcon,
  });

  final String ? myAccount;
  final String ? myIcon;

  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context: context, designHeight: 778, designWidth: 360);
    return Center(
      child: Container(
        width: AppDimensions.getDimensions(requiredWidth: 315),
        height: AppDimensions.getDimensions(requiredHeight: 107),
        decoration: BoxDecoration(
            color: AppColors.kMainContainer,
            borderRadius: BorderRadius.circular(8)),
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: AppDimensions.getDimensions(requiredWidth: 15)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.arrow_left_outlined,
              ),
              SizedBox(
                width: AppDimensions.getDimensions(requiredWidth: 60),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MainTextBlue(
                    myText: myAccount,
                    fontSize: 14,
                  ),
                  SizedBox(
                    height: AppDimensions.getDimensions(requiredHeight: 5),
                  ),
                  const MainTextGrey(
                    myText: AppStrings.kAccountCapabilitiesSignUp,
                    fontSize: 10,
                    fontWeight: FontWeight.w400,
                  ),
                  const MainTextGrey(
                    myText: AppStrings.kAccountCapabilitiesSignUp,
                    fontSize: 10,
                    fontWeight: FontWeight.w400,
                  ),
                  const MainTextGrey(
                    myText: AppStrings.kAccountCapabilitiesSignUp,
                    fontSize: 10,
                    fontWeight: FontWeight.w400,
                  )
                ],
              ),
              SizedBox(
                width: AppDimensions.getDimensions(requiredWidth: 18),
              ),
              Container(
                height: AppDimensions.getDimensions(requiredHeight: 60),
                width: AppDimensions.getDimensions(requiredWidth: 60),
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.kCircleContainerSignUp,
                ),
                padding: EdgeInsets.all(
                    AppDimensions.getDimensions(requiredHeight: 10)),
                child: Image.asset(
                  myIcon!,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}