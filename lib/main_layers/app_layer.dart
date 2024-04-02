import 'package:assiut_project/core/app_dimensions.dart';
import 'package:assiut_project/core/app_routes.dart';
import 'package:flutter/material.dart';
import 'presentaion_layer/sign_in/forget_password_ways/forget_password_with_phone/forget_password_countdown_timer.dart';
import 'presentaion_layer/sign_in/forget_password_ways/forget_password_with_phone/forget_password_get_code_phone_number.dart';
import 'presentaion_layer/sign_in/log_in/login_screen.dart';
import 'presentaion_layer/sign_in/reset_password/reset_password_done_screen.dart';
import 'presentaion_layer/sign_in/reset_password/reset_password_screen.dart';

class AppHome extends StatelessWidget {
  const AppHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context: context, designHeight: 778, designWidth: 360);
    return   const MaterialApp(
      debugShowCheckedModeBanner: false,
        onGenerateRoute: RoutesGenerator.getRoute ,
      home:  SafeArea(child: LoginScreen())

    );
  }
}
