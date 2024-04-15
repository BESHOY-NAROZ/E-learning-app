import 'package:assiut_project/core/app_constants/app_assets.dart';
import 'package:flutter/material.dart';

import 'app_colors.dart';
import 'app_strings.dart';



class AppLists {

  static List<Image> kLogInWays = [
    Image.asset(AppAssets.kFaceBook,),
    Image.asset(AppAssets.kGoogle),
    Image.asset(AppAssets.kIPhone),
    Image.asset(AppAssets.kDots),
  ];
  static List<Image> kSocialMedia = [
    Image.asset(AppAssets.kFaceBook,),
    Image.asset(AppAssets.kGoogle),
    Image.asset(AppAssets.kWhatsapp),
    Image.asset(AppAssets.kTelegram),
  ];
  static List<Color> kStudentStatisticsColorList = [
    AppColors.kMainTextGreen,
    AppColors.kMainTextYellow,
    AppColors.kMainTextRed,
  ];
  static List<String> kStudentStatisticsPercentageList = [
    AppStrings.kSolvePercentageGreenGroups,
    AppStrings.kSolvePercentageYellowGroups,
    AppStrings.kSolvePercentageRedGroups,
  ];






}