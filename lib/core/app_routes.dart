import 'package:assiut_project/main_layers/presentaion_layer/sign_in/forget_password_ways/forget_password_ways_screen.dart';
import 'package:assiut_project/main_layers/presentaion_layer/sign_in/forget_password_ways/forget_password_with_email/forget_password_get_code_email.dart';
import 'package:assiut_project/main_layers/presentaion_layer/sign_in/forget_password_ways/forget_password_with_phone/forget_password_get_code_phone_number.dart';
import 'package:assiut_project/main_layers/presentaion_layer/sign_in/log_in/login_screen.dart';
import 'package:assiut_project/main_layers/presentaion_layer/sign_in/reset_password/reset_password_done_screen.dart';
import 'package:assiut_project/main_layers/presentaion_layer/sign_in/reset_password/reset_password_screen.dart';
import 'package:flutter/material.dart';

class RoutesManager{

  static const String loginScreen = "/";
  static const String resetPasswordDone = "/resetPasswordDone";
  static const String resetPassword = "/resetPassword";
  static const String forgetPasswordWays = "/forgetPasswordWays";
  static const String forgetPasswordGetCodeEmail = "/forgetPasswordGetCodeEmail";
  static const String forgetPasswordGetCodePhoneNumber = "/forgetPasswordGetC"
      "odePhoneNumber";
  static const String storeDetailsRoute = "/storeDetails";
}



class RoutesGenerator {

  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesManager.loginScreen:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      case RoutesManager.resetPasswordDone:
        return MaterialPageRoute(builder: (_) => const ResetPasswordDone());
      case RoutesManager.resetPassword:
        return MaterialPageRoute(builder: (_) => const ResetPassword());
      case RoutesManager.forgetPasswordWays:
        return MaterialPageRoute(builder: (_) => const ForgetPasswordWays());
      case RoutesManager.forgetPasswordGetCodeEmail:
        return MaterialPageRoute(builder: (_) => const ForgetPasswordGetCodeEmail());
      case RoutesManager.forgetPasswordGetCodePhoneNumber:
        return MaterialPageRoute(builder: (_) => const ForgetPasswordGetCodePhoneNumber());
      // case RoutesManager.storeDetailsRoute:
      //   return MaterialPageRoute(builder: (_) => const StoreDetailsView());
      default:
        return unDefinedRoute();
    }}

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
        builder: (_) => Scaffold(
          appBar: AppBar(
            title:  const Text('NoRouteFound'),
          ),
          body:  const Center(child: Text('NoRouteFound')),
        ));
  }
}