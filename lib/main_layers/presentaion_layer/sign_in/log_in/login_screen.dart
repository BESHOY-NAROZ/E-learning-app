import 'package:assiut_project/core/app_constants/app_assets.dart';
import 'package:assiut_project/core/app_constants/app_colors.dart';
import 'package:assiut_project/core/app_constants/app_lists.dart';
import 'package:assiut_project/core/app_constants/app_strings.dart';
import 'package:assiut_project/core/app_dimensions.dart';
import 'package:assiut_project/core/app_routes.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_button_red.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/text_form_filed.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/uderlined_text.dart';
import 'package:assiut_project/main_layers/presentaion_layer/sign_in/shared_components_signin/app_bar_signin.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context: context, designHeight: 778, designWidth: 360);
    return Scaffold(
      appBar: const AppBarSignIn(myTitle: AppStrings.kAppBarLogIn),
      body: SingleChildScrollView(
        child: Column(children: [
          SizedBox(
              height: AppDimensions.getDimensions(requiredHeight: 154.76),
              width: AppDimensions.getDimensions(requiredWidth: 237),
              child: Image.asset(AppAssets.kLogIn)),
          const Text(
            AppStrings.kLogInEmailOrPhone,
            style: TextStyle(
                fontFamily: 'Almarai',
                color: AppColors.kLoginEmailOrPhone,
                fontWeight: FontWeight.w700,
                fontSize: 12),
          ),
          SizedBox(
              height: AppDimensions.getDimensions(requiredHeight: 45),
              width: AppDimensions.getDimensions(requiredWidth: 320),
              child: const CustomTextFormFiled(
                hintText: AppStrings.kLogInTextFormFiledHint,
              )),
          const Text(
            AppStrings.kLogInPassword,
            style: TextStyle(
                fontFamily: 'Almarai',
                color: AppColors.kLoginEmailOrPhone,
                fontWeight: FontWeight.w700,
                fontSize: 12),
          ),
          const CustomTextFormFiled(
            obscureText: true,
            prefixIcon: Icon(Icons.visibility_off,
                color: AppColors.kLoginFormFiledBorder),
            hintText: AppStrings.kResetPasswordHintFormFiled,
          ),
          Row(
            children: [
              InkWell(
                  onTap: () {
                    Navigator.pushReplacementNamed(context, RoutesManager.forgetPasswordWays);
                  },
                  child: const CustomUnderLinedText(myText: AppStrings.kLogInForgetPassword,fontSize: 12)),
        
              const Spacer(),
              const Text(
                AppStrings.kLogInRememberMe,
                style: TextStyle(
                    fontFamily: 'Almarai',
                    color: AppColors.kLoginRememberMe,
                    fontWeight: FontWeight.w700,
                    fontSize: 12),
              ),
              SizedBox(
                height: AppDimensions.getDimensions(requiredHeight: 17),
                width: AppDimensions.getDimensions(requiredWidth: 17),
                child: Checkbox(
                  side: const BorderSide(color: AppColors.kLoginRememberMe),
                  value: false,
                  onChanged: (value) {},
                ),
              ),
            ],
          ),
          const CustomMainButtonRed(
            buttonName: AppStrings.kLogInMainButtonText,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: AppDimensions.getDimensions(requiredHeight: 2),
                width: AppDimensions.getDimensions(requiredWidth: 94),
                color: AppColors.kLoginLinear,
              ),
              const Text(
                AppStrings.kLogInOr,
                style: TextStyle(
                    fontFamily: 'Almarai',
                    color: AppColors.kLoginOr,
                    fontWeight: FontWeight.w400,
                    fontSize: 16),
              ),
              Container(
                height: AppDimensions.getDimensions(requiredHeight: 2),
                width: AppDimensions.getDimensions(requiredWidth: 94),
                color: AppColors.kLoginLinear,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(AppLists.kLogInWays.length, (index) {
              return Container(
                height: AppDimensions.getDimensions(requiredHeight: 40),
                width: AppDimensions.getDimensions(requiredWidth: 40),
                clipBehavior: Clip.antiAliasWithSaveLayer,
                decoration: BoxDecoration(
                    color: AppColors.kLoginWays.withOpacity(0.2),
                    shape: BoxShape.circle),
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: AppLists.kLogInWays[index],
                ),
              );
            }),
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                  padding: EdgeInsets.only(top: 8.0),
                  child: CustomUnderLinedText(
                    myText: AppStrings.kLogInCreateAccount,
                  )),
              Text(
                AppStrings.kLogInWithoutAccount,
                style: TextStyle(
                    fontFamily: 'Almarai',
                    color: AppColors.kLoginWithoutAccount,
                    fontWeight: FontWeight.w700,
                    fontSize: 14),
              ),
            ],
          ),
        ],),
      ),
    );
  }
}
