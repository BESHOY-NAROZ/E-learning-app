import 'package:assiut_project/main_layers/presentaion_layer/groups/add_new_student/add_new_student_by_qr_screen.dart';
import 'package:assiut_project/main_layers/presentaion_layer/groups/add_new_student/add_new_student_done.dart';
import 'package:assiut_project/main_layers/presentaion_layer/groups/add_new_student/add_new_student_screen.dart';
import 'package:assiut_project/main_layers/presentaion_layer/groups/add_new_student/after_scan_screen.dart';
import 'package:assiut_project/main_layers/presentaion_layer/groups/attendance_and_departure/add_new_class_by_qr_screen.dart';
import 'package:assiut_project/main_layers/presentaion_layer/groups/attendance_and_departure/add_new_class_done.dart';
import 'package:assiut_project/main_layers/presentaion_layer/groups/attendance_and_departure/add_new_class_screen.dart';
import 'package:assiut_project/main_layers/presentaion_layer/groups/attendance_and_departure/add_new_class_ways/add_new_class_ways_screen.dart';
import 'package:assiut_project/main_layers/presentaion_layer/groups/attendance_and_departure/attendance_and_departure_screen.dart';
import 'package:assiut_project/main_layers/presentaion_layer/groups/attendance_and_departure/who_attended.dart';
import 'package:assiut_project/main_layers/presentaion_layer/groups/create_group/create_group_done.dart';
import 'package:assiut_project/main_layers/presentaion_layer/groups/create_group/create_group_screen.dart';
import 'package:assiut_project/main_layers/presentaion_layer/groups/group_details/group_details_screen.dart';
import 'package:assiut_project/main_layers/presentaion_layer/groups/group_statistics/group_statistics_screen.dart';
import 'package:assiut_project/main_layers/presentaion_layer/groups/groups_students/students_groups_screen.dart';
import 'package:assiut_project/main_layers/presentaion_layer/groups/sent_exams/sent_exams_screen.dart';
import 'package:assiut_project/main_layers/presentaion_layer/groups/students_profile/student_profile_screen.dart';
import 'package:assiut_project/main_layers/presentaion_layer/groups/students_profile/student_statistics_screen.dart';
import 'package:assiut_project/main_layers/presentaion_layer/main_screens/home_mainscreen/home_mainscreen_screen.dart';
import 'package:assiut_project/main_layers/presentaion_layer/main_screens/menu_mainscreen/menu_mainscreen.dart';
import 'package:assiut_project/main_layers/presentaion_layer/main_screens/new_offer/new_offer_screen.dart';
import 'package:assiut_project/main_layers/presentaion_layer/main_screens/new_version/first_new_version.dart';
import 'package:assiut_project/main_layers/presentaion_layer/main_screens/new_version/second_new_version.dart';
import 'package:assiut_project/main_layers/presentaion_layer/main_screens/qr_mainscreen/qr_mainscreen_screen.dart';
import 'package:assiut_project/main_layers/presentaion_layer/main_screens/removed_account/removed_account_screen.dart';
import 'package:assiut_project/main_layers/presentaion_layer/sign_in/forget_password_ways/forget_password_ways_screen.dart';
import 'package:assiut_project/main_layers/presentaion_layer/sign_in/forget_password_ways/forget_password_with_email/forget_password_get_code_email.dart';
import 'package:assiut_project/main_layers/presentaion_layer/sign_in/forget_password_ways/forget_password_with_phone/forget_password_get_code_phone_number.dart';
import 'package:assiut_project/main_layers/presentaion_layer/sign_in/log_in/login_screen.dart';
import 'package:assiut_project/main_layers/presentaion_layer/sign_in/reset_password/reset_password_done_screen.dart';
import 'package:assiut_project/main_layers/presentaion_layer/sign_in/reset_password/reset_password_screen.dart';
import 'package:flutter/material.dart';

class RoutesManager {
  static const String loginScreen = "/";
  static const String resetPasswordDone = "/resetPasswordDone";
  static const String resetPassword = "/resetPassword";
  static const String forgetPasswordWays = "/forgetPasswordWays";
  static const String forgetPasswordGetCodeEmail =
      "/forgetPasswordGetCodeEmail";
  static const String forgetPasswordGetCodePhoneNumber = "/forgetPasswordGetC"
      "odePhoneNumber";
  static const String newOffer = "/newOffer";
  static const String firstNewVersion = "/firstNewVersion";
  static const String secondNewVersion = "/secondNewVersion";
  static const String removedAccount = "/removedAccount";
  static const String homeMainScreen = "/homeMainScreen";
  static const String menuMainScreen = "/menuMainScreen";
  static const String qRMainScreen = "/qRMainScreen";
  static const String studentsGroups = "/studentsGroups";
  static const String groupDetails = "/groupDetails";
  static const String addNewStudent = "/addNewStudent";
  static const String addStudentByQR = "/addStudentByQR";
  static const String afterNewScan = "/afterNewScan";
  static const String addNewStudentDone = "/addNewStudentDone";
  static const String groupStatistics = "/groupStatistics";
  static const String sentExams = "/sentExams";
  static const String createGroup = "/createGroup";
  static const String createGroupDone = "/createGroupDone";
  static const String studentsProfile = "/studentsProfile";
  static const String studentStatistics = "/studentStatistics";
  static const String attendanceAndDeparture = "/attendanceAndDeparture";
  static const String whoAttended = "/whoAttended";
  static const String addNewClass = "/addNewClass";
  static const String addNewClassByQR = "/addNewClassByQR";
  static const String addNewClassDone = "/addNewClassDone";


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
        return MaterialPageRoute(
            builder: (_) => const ForgetPasswordGetCodeEmail());
      case RoutesManager.forgetPasswordGetCodePhoneNumber:
        return MaterialPageRoute(
            builder: (_) => const ForgetPasswordGetCodePhoneNumber());
      case RoutesManager.newOffer:
        return MaterialPageRoute(builder: (_) => const NewOffer());
      case RoutesManager.firstNewVersion:
        return MaterialPageRoute(builder: (_) => const FirstNewVersion());
      case RoutesManager.secondNewVersion:
        return MaterialPageRoute(builder: (_) => const SecondNewVersion());
      case RoutesManager.removedAccount:
        return MaterialPageRoute(builder: (_) => const RemovedAccount());
      case RoutesManager.homeMainScreen:
        return MaterialPageRoute(builder: (_) => const HomeMainScreen());
      case RoutesManager.menuMainScreen:
        return MaterialPageRoute(builder: (_) => const MenuMainScreen());
      case RoutesManager.qRMainScreen:
        return MaterialPageRoute(builder: (_) => const QRMainScreen());
        case RoutesManager.studentsGroups:
        return MaterialPageRoute(builder: (_) => const StudentGroups());
        case RoutesManager.groupDetails:
        return MaterialPageRoute(builder: (_) => const GroupDetails());
        case RoutesManager.addNewStudent:
        return MaterialPageRoute(builder: (_) => const AddNewStudent());
        case RoutesManager.addStudentByQR:
        return MaterialPageRoute(builder: (_) => const AddNewStudentByQR());
        case RoutesManager.afterNewScan:
        return MaterialPageRoute(builder: (_) => const AfterScan());
        case RoutesManager.addNewStudentDone:
        return MaterialPageRoute(builder: (_) => const AddNewStudentDone());
        case RoutesManager.groupStatistics:
        return MaterialPageRoute(builder: (_) => const GroupStatistics());
        case RoutesManager.sentExams:
        return MaterialPageRoute(builder: (_) => const SentExams());
        case RoutesManager.createGroup:
        return MaterialPageRoute(builder: (_) => const CreateGroup());
        case RoutesManager.createGroupDone:
        return MaterialPageRoute(builder: (_) => const CreateGroupDone());
        case RoutesManager.studentsProfile:
        return MaterialPageRoute(builder: (_) => const StudentProfile());
      case RoutesManager.studentStatistics:
        return MaterialPageRoute(builder: (_) => const StudentStatistics());
        case RoutesManager.attendanceAndDeparture:
        return MaterialPageRoute(builder: (_) => const AttendanceAndDeparture());
        case RoutesManager.whoAttended:
        return MaterialPageRoute(builder: (_) => const WhoAttended());
        case RoutesManager.addNewClass:
        return MaterialPageRoute(builder: (_) => const AddNewClass());
        case RoutesManager.addNewClassByQR:
        return MaterialPageRoute(builder: (_) => const AddNewClassByQR());
        case RoutesManager.addNewClassDone:
        return MaterialPageRoute(builder: (_) => const AddNewClassDone());
      // case RoutesManager.newOffer:
      // return MaterialPageRoute(builder: (_) => const NewOffer());
      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
        builder: (_) => Scaffold(
              appBar: AppBar(
                title: const Text('NoRouteFound'),
              ),
              body: const Center(child: Text('NoRouteFound')),
            ));
  }
}
