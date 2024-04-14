import 'package:assiut_project/core/app_dimensions.dart';
import 'package:assiut_project/core/app_routes.dart';
import 'package:assiut_project/main_layers/presentaion_layer/main_screens/new_offer/new_offer_screen.dart';
import 'package:flutter/material.dart';
import 'presentaion_layer/groups/groups_students/students_groups_screen.dart';
import 'presentaion_layer/main_screens/home_mainscreen/home_mainscreen_screen.dart';
import 'presentaion_layer/main_screens/menu_mainscreen/menu_mainscreen.dart';
import 'presentaion_layer/main_screens/new_version/second_new_version.dart';
import 'presentaion_layer/main_screens/qr_mainscreen/qr_mainscreen_screen.dart';
import 'presentaion_layer/main_screens/removed_account/removed_account_screen.dart';
import 'presentaion_layer/registration/sign_in/log_in/login_screen.dart';


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
