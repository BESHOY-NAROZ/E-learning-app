import 'package:assiut_project/core/app_dimensions.dart';
import 'package:flutter/material.dart';
import 'presentaion_layer/sign_in/forget_password_ways/forget_password_ways_screen.dart';

class AppHome extends StatelessWidget {
  const AppHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context: context, designHeight: 778, designWidth: 360);
    return   const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  SafeArea(child: ForgetPasswordWays())

    );
  }
}
