import 'package:assiut_project/core/app_constants/app_assets.dart';
import 'package:assiut_project/main_layers/presentaion_layer/assistant/common_files/notifications/notifications_screen.dart';
import 'package:assiut_project/main_layers/presentaion_layer/assistant/groups/groups_students/students_groups_screen.dart';
import 'package:assiut_project/main_layers/presentaion_layer/assistant/main_screens/home_mainscreen/home_mainscreen_screen.dart';
import 'package:assiut_project/main_layers/presentaion_layer/assistant/main_screens/menu_mainscreen/menu_mainscreen.dart';
import 'package:assiut_project/main_layers/presentaion_layer/teacher/common_files_teacher/notifications_teacher/notifications_screen.dart';
import 'package:assiut_project/main_layers/presentaion_layer/teacher/main_screens_teacher/home_mainscreen/home_mainscreen_screen.dart';
import 'package:assiut_project/main_layers/presentaion_layer/teacher/main_screens_teacher/menu_mainscreen/menu_mainscreen.dart';
import 'package:flutter/material.dart';

import 'app_colors.dart';
import 'app_strings.dart';

class AppLists {
  static List<Image> kLogInWays = [
    Image.asset(
      AppAssets.kFaceBook,
    ),
    Image.asset(AppAssets.kGoogle),
    Image.asset(AppAssets.kIPhone),
    Image.asset(AppAssets.kDots),
  ];
  static List<Image> kSocialMedia = [
    Image.asset(
      AppAssets.kFaceBook,
    ),
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

  static List<Widget> myAssistantScreens = [
    const MenuMainScreen(),
    const Notifications(),
    const StudentGroups(),
    const HomeMainScreen(),
  ];

  static List<Widget> myTeacherScreens = [
    const MenuMainScreenTeacher(),
    const NotificationsTeacher(),
    const StudentGroups(),
    const HomeMainScreenTeacher(),
  ];

  static List<int> timeSlot = [1, 2, 3];

  static List<String> kUnitsForExams = [
    AppStrings.kFirstUnitCreateExam,
    AppStrings.kSecondUnitCreateExam,
    AppStrings.kThirdUnitCreateExam,
    AppStrings.kFourthUnitCreateExam,
  ];

  static List<bool> kBoolUnitsForExams = [
    false,
    false,
    false,
    false,
  ];

  static List<String> kClassesForExams = [
    AppStrings.kFirstClassCreateExam,
    AppStrings.kSecondClassCreateExam,
  ];
  static List<bool> kBoolClassesForExams = [
    false,
    false,
    false,
    false,
  ];

  static List<String> kPartsForExams = [
    AppStrings.kFirstPartCreateExam,
    AppStrings.kSecondPartCreateExam,
  ];

  static List<bool> kBoolPartsForExams = [
    false,
    false,
    false,
    false,
  ];

  static List<String> kLessonsForExams = [
    AppStrings.kFirstLessonCreateExam,
    AppStrings.kSecondLessonCreateExam,
  ];

  static List<String> kCreateQuestionList = [
    AppStrings.kQuestionBankMineBottomSheet,
    AppStrings.kQuestionBankGPSBottomSheet,
    AppStrings.kCreateNewQuestionBottomSheet,
  ];
  static List<String> kPaymentMethodsList = [
    AppStrings.kFawryPayment,
    AppStrings.kEWalletPayment,
    AppStrings.kCreditCardPayment,
  ];
  static List<String> kPaymentMethodsHintList = [
    AppStrings.kEnterNumberPayment,
    AppStrings.kEnterNumberPayment,
    AppStrings.kEnterDetailsPayment,
  ];
  static List<String> kPaymentMethodsImagesList = [
    AppAssets.kFawry,
    AppAssets.kWallet,
    AppAssets.kCreditCard,
  ];

  static List<String> kQuestionTypeList = [
    AppStrings.kChooseQCreateExam,
    AppStrings.kCompleteQCreateExam,
    AppStrings.kArticleQCreateExam,
    AppStrings.kTrueOrFalseQCreateExam,
    AppStrings.kDecideLaterCreateExam,
  ];
  static List<String> kAddQuestionTypeList = [
    AppStrings.kChooseQCreateExam,
    AppStrings.kCompleteQCreateExam,
    AppStrings.kArticleQCreateExam,
    AppStrings.kTrueOrFalseQCreateExam,
  ];
  static List<String> kMainAddQuestionTypeList = [
    AppStrings.kMainChooseCreateExam,
    AppStrings.kMainCompleteCreateExam,
    AppStrings.kMainArticleCreateExam,
    AppStrings.kMainTrueOrFalseCreateExam,
  ];
  static List<String> kExamWithoutTypeList = [
    AppStrings.kQChooseCreateExam,
    AppStrings.kQCompleteCreateExam,
    AppStrings.kQTrueOrFalseCreateExam,
    AppStrings.kQArticleCreateExam,
  ];
  static List<String> kMainExamWithoutTypeList = [
    AppStrings.kMainChooseCreateExam,
    AppStrings.kMainCompleteCreateExam,
    AppStrings.kMainTrueOrFalseCreateExam,
    AppStrings.kMainArticleCreateExam,
  ];
  static List<String> kDifficultyList = [
    AppStrings.kEasyDifficultyDegreeCreateExam,
    AppStrings.kNormalDifficultyDegreeCreateExam,
    AppStrings.kDifficultDifficultyDegreeCreateExam,
  ];
  static List<String> kBloomList = [
    AppStrings.kUnderStandClassificationCreateExam,
    AppStrings.kSaveClassificationCreateExam,
    AppStrings.kBothClassificationCreateExam,
  ];
  static List<String> kLevelList = [
    AppStrings.kLevelOneCreateExam,
    AppStrings.kLevelTwoCreateExam,
    AppStrings.kLevelThreeCreateExam,
  ];
  static List<String> kClassRoomList = [
    AppStrings.kClassRoomOneCreateExam,
    AppStrings.kClassRoomTwoCreateExam,
    AppStrings.kClassRoomThreeCreateExam,
  ];
  static List<String> kLanguagesList = [
    AppStrings.kArabicCreateExam,
    AppStrings.kGeologyCreateExam,
    AppStrings.kPPhilosophyCreateExam,
    AppStrings.kChemistryCreateExam,
    AppStrings.kPhysicsCreateExam,
    AppStrings.kBiologyCreateExam,
    AppStrings.kFrenchCreateExam,
  ];
  static List<String> kAddQuestionToList = [
    AppStrings.kSendToMeQuestion,
    AppStrings.kSendToBothQuestion,
  ];
  static List<String> kOnBoardingList = [
    AppAssets.kOnBoarding1,
    AppAssets.kOnBoarding2,
    AppAssets.kOnBoarding3,
  ];
  static List<String> kMainOnBoardingList = [
    AppStrings.kMainOnBoarding1,
    AppStrings.kMainOnBoarding2,
    AppStrings.kMainOnBoarding3,
  ];
}
