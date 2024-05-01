import 'dart:async';

import 'package:assiut_project/core/app_constants/app_assets.dart';
import 'package:assiut_project/core/app_constants/app_colors.dart';
import 'package:assiut_project/core/app_constants/app_strings.dart';
import 'package:assiut_project/core/app_dimensions.dart';
import 'package:assiut_project/main_layers/presentaion_layer/onboarding_screen/onboarding_screen.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/custom_widgets/main_text_black.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late Timer timer;
  @override
  void initState() {
    super.initState();
    timer = Timer(
        const Duration(seconds: 3),
        () => Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (BuildContext context) => const OnBoardingScreen())));
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context: context, designHeight: 778, designWidth: 360);

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: AppDimensions.getDimensions(requiredHeight: 195),
            ),
            Image.asset(
              AppAssets.kTeacherLogo,
              height: AppDimensions.getDimensions(requiredHeight: 411),
              width: AppDimensions.getDimensions(requiredWidth: 330),
            ),
            Spacer(),
            MainTextBlack(
              myText: AppStrings.kSTeacher,
              color: AppColors.kMainBlack,
              fontSize: AppDimensions.defaultSize * 24,
            ),
            SizedBox(
              height: AppDimensions.getDimensions(requiredHeight: 33),
            ),
          ],
        ),
      ),
    );
  }
}
