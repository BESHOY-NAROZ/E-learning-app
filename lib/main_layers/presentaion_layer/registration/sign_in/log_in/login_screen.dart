import 'package:assiut_project/core/app_constants/app_assets.dart';
import 'package:assiut_project/core/app_constants/app_colors.dart';
import 'package:assiut_project/core/app_constants/app_lists.dart';
import 'package:assiut_project/core/app_constants/app_strings.dart';
import 'package:assiut_project/core/app_dimensions.dart';
import 'package:assiut_project/core/app_routes.dart';
import 'package:assiut_project/main_layers/presentaion_layer/registration/sign_in/shared_components_signin/main_hint_text_registration.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_app_bar.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_button_red.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/text_form_filed.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/uderlined_text.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context: context, designHeight: 778, designWidth: 360);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const MainAppBar(
              myTitle: AppStrings.kAppBarLogIn,
              designHeight: 1006,
              designWidth: 360,
            ),
            SizedBox(
              height: AppDimensions.getDimensions(requiredHeight: 30.87),
            ),
            Center(
              child: SizedBox(
                  height: AppDimensions.getDimensions(requiredHeight: 154.76),
                  width: AppDimensions.getDimensions(requiredWidth: 237),
                  child: Image.asset(AppAssets.kLogIn)),
            ),
            SizedBox(
              height: AppDimensions.getDimensions(requiredHeight: 36.37),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: AppDimensions.getDimensions(requiredWidth: 20)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const MainHintTextRegistration(
                    myText: AppStrings.kLogInEmailOrPhone,
                  ),
                  SizedBox(
                    height: AppDimensions.getDimensions(requiredHeight: 8),
                  ),
                  SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 45),
                      width: AppDimensions.getDimensions(requiredWidth: 320),
                      child: const CustomTextFormFiled(
                        hintText: AppStrings.kLogInTextFormFiledHint,
                      )),
                  SizedBox(
                    height: AppDimensions.getDimensions(requiredHeight: 8),
                  ),
                  const MainHintTextRegistration(
                    myText: AppStrings.kLogInPassword,
                  ),
                  SizedBox(
                    height: AppDimensions.getDimensions(requiredHeight: 8),
                  ),
                  const CustomTextFormFiled(
                    obscureText: true,
                    prefixIcon: Icon(Icons.visibility_off,
                        color: AppColors.kLoginFormFiledBorder),
                    hintText: AppStrings.kResetPasswordHintFormFiled,
                  ),
                  SizedBox(
                    height: AppDimensions.getDimensions(requiredHeight: 12),
                  ),
                  Row(
                    children: [
                      InkWell(
                          onTap: () {
                            Navigator.pushReplacementNamed(
                                context, RoutesManager.forgetPasswordWays);
                          },
                          child: const CustomUnderLinedText(
                              myText: AppStrings.kLogInForgetPassword,
                              fontSize: 12)),
                      const Spacer(),
                      const MainHintTextRegistration(
                        myText: AppStrings.kLogInRememberMe,
                      ),
                      SizedBox(
                        width: AppDimensions.getDimensions(requiredWidth: 7),
                      ),
                      SizedBox(
                        height: AppDimensions.getDimensions(requiredHeight: 17),
                        width: AppDimensions.getDimensions(requiredWidth: 17),
                        child: Checkbox(
                          side: const BorderSide(
                              color: AppColors.kLoginRememberMe),
                          value: false,
                          onChanged: (value) {},
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: AppDimensions.getDimensions(requiredHeight: 18),
                  ),
                  MainButtonRed(
                    buttonName: AppStrings.kLogInMainButtonText,
                    onPressed: () {
                      Navigator.pushNamed(context, RoutesManager.newOffer);
                    },
                  ),
                  SizedBox(
                    height: AppDimensions.getDimensions(requiredHeight: 16),
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
                  SizedBox(
                    height: AppDimensions.getDimensions(requiredHeight: 16),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:
                        List.generate(AppLists.kLogInWays.length, (index) {
                      return Container(
                        height: AppDimensions.getDimensions(requiredHeight: 40),
                        width: AppDimensions.getDimensions(requiredWidth: 40),
                        margin: EdgeInsets.symmetric(
                            horizontal:
                                AppDimensions.getDimensions(requiredWidth: 4)),
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
                  SizedBox(
                    height: AppDimensions.getDimensions(requiredHeight: 55),
                  ),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: InkWell(
                            onTap: () {
                              Navigator.pushNamed(context, RoutesManager.assistantMainDetails);
                            },
                            child: const CustomUnderLinedText(
                              myText: AppStrings.kLogInCreateAccount,
                            ),
                          )),
                      const Text(
                        AppStrings.kLogInWithoutAccount,
                        style: TextStyle(
                            fontFamily: 'Almarai',
                            color: AppColors.kLoginWithoutAccount,
                            fontWeight: FontWeight.w700,
                            fontSize: 14),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
