import 'package:assiut_project/core/app_dimensions.dart';
import 'package:flutter/material.dart';
import 'presentaion_layer/sign_in/forget_password_ways/forget_password_ways_screen.dart';
import 'presentaion_layer/sign_in/forget_password_ways/forget_password_with_email/forget_password_get_code_email.dart';
import 'presentaion_layer/sign_in/forget_password_ways/forget_password_with_phone/forget_password_get_code_phone_number.dart';

class AppHome extends StatelessWidget {
  const AppHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context: context, designHeight: 778, designWidth: 360);
    return   const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  SafeArea(child: ForgetPasswordGetCodePhoneNumber())

    );
  }
}
