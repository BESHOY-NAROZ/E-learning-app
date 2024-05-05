import 'package:assiut_project/core/app_dimensions.dart';
import 'package:assiut_project/core/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'presentaion_layer/splash_screen/splash_screen.dart';

class AppHome extends StatelessWidget {
  const AppHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    AppDimensions.init(context: context, designHeight: 778, designWidth: 360);
    return const MaterialApp(
      onGenerateRoute: RoutesGenerator.getRoute,
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
