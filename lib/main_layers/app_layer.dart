import 'package:assiut_project/core/app_dimensions.dart';
import 'package:assiut_project/core/app_routes.dart';
import 'package:flutter/material.dart';

import 'presentaion_layer/common_files/conatct_us/contact_us_screen.dart';
import 'presentaion_layer/common_files/general _settings/general _settings_screen.dart';
import 'presentaion_layer/common_files/help/help_screen.dart';
import 'presentaion_layer/common_files/invite_friends/invite_friends_screen.dart';
import 'presentaion_layer/common_files/notifications/notifications_screen.dart';
import 'presentaion_layer/common_files/your_opinion/add_opinion_done.dart';
import 'presentaion_layer/common_files/your_opinion/your_opinion_screen.dart';
import 'presentaion_layer/profile_editing/profile_editing_screen.dart';
import 'presentaion_layer/profile_editing/reset_email/reset_email_get_code.dart';
import 'presentaion_layer/profile_editing/reset_email/reset_email_screen.dart';
import 'presentaion_layer/registration/sign_in/log_in/login_screen.dart';


class AppHome extends StatelessWidget {
  const AppHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context: context, designHeight: 778, designWidth: 360);
    return   const MaterialApp(
      debugShowCheckedModeBanner: false,
        onGenerateRoute: RoutesGenerator.getRoute ,
      home:  SafeArea(child: ResetEmailGetCode())
    );
  }
}
