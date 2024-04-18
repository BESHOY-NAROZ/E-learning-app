import 'package:assiut_project/main_layers/presentaion_layer/common_files/conatct_us/contact_us_screen.dart';
import 'package:assiut_project/main_layers/presentaion_layer/common_files/general%20_settings/general%20_settings_screen.dart';
import 'package:assiut_project/main_layers/presentaion_layer/common_files/help/help_screen.dart';
import 'package:assiut_project/main_layers/presentaion_layer/common_files/notifications/notifications_screen.dart';
import 'package:assiut_project/main_layers/presentaion_layer/common_files/your_opinion/add_opinion_done.dart';
import 'package:assiut_project/main_layers/presentaion_layer/common_files/your_opinion/your_opinion_screen.dart';
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
import 'package:assiut_project/main_layers/presentaion_layer/profile_editing/profile_editing_screen.dart';
import 'package:assiut_project/main_layers/presentaion_layer/profile_editing/reset_email/reset_email_done.dart';
import 'package:assiut_project/main_layers/presentaion_layer/profile_editing/reset_email/reset_email_get_code.dart';
import 'package:assiut_project/main_layers/presentaion_layer/profile_editing/reset_email/reset_email_screen.dart';
import 'package:assiut_project/main_layers/presentaion_layer/profile_editing/reset_email/set_email_now.dart';
import 'package:assiut_project/main_layers/presentaion_layer/registration/sign_in/forget_password_ways/forget_password_ways_screen.dart';
import 'package:assiut_project/main_layers/presentaion_layer/registration/sign_in/forget_password_ways/forget_password_with_email/forget_password_get_code_email.dart';
import 'package:assiut_project/main_layers/presentaion_layer/registration/sign_in/forget_password_ways/forget_password_with_phone/forget_password_get_code_phone_number.dart';
import 'package:assiut_project/main_layers/presentaion_layer/registration/sign_in/log_in/login_screen.dart';
import 'package:assiut_project/main_layers/presentaion_layer/registration/sign_in/reset_password/reset_password_done_screen.dart';
import 'package:assiut_project/main_layers/presentaion_layer/registration/sign_in/reset_password/reset_password_screen.dart';
import 'package:assiut_project/main_layers/presentaion_layer/teachers/add_new_teacher/add_new_teacher_by_qr_screen.dart';
import 'package:assiut_project/main_layers/presentaion_layer/teachers/add_new_teacher/add_new_teacher_done.dart';
import 'package:assiut_project/main_layers/presentaion_layer/teachers/add_new_teacher/add_new_teacher_screen.dart';
import 'package:assiut_project/main_layers/presentaion_layer/teachers/add_new_teacher/after_scan_teacher_screen.dart';
import 'package:assiut_project/main_layers/presentaion_layer/teachers/teachers_screen.dart';
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
  static const String teachers = "/teachers";
  static const String addNewTeacher = "/addNewTeacher";
  static const String afterScanTeacher = "/afterScanTeacher";
  static const String addNewTeacherByQR = "/addNewTeacherByQR";
  static const String addNewTeacherDone = "/addNewTeacherDone";
  static const String contactUS = "/contactUS";
  static const String generalSettings = "/generalSettings";
  static const String notificationsCommon = "/notificationsCommon";
  static const String helpBody = "/helpBody";
  static const String yourOpinion = "/yourOpinion";
  static const String addOpinionDone = "/addOpinionDone";
  static const String profileEditing = "/profileEditing";
  static const String resetEmail = "/resetEmail";
  static const String resetEmailGetCode = "/resetEmailGetCode";
  static const String setEmailNow = "/setEmailNow";
  static const String resetEmailDone = "/resetEmailDone";


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
        case RoutesManager.teachers:
        return MaterialPageRoute(builder: (_) => const Teachers());
        case RoutesManager.addNewTeacher:
        return MaterialPageRoute(builder: (_) => const AddNewTeacher());
        case RoutesManager.afterScanTeacher:
        return MaterialPageRoute(builder: (_) => const AfterScanTeacher());
        case RoutesManager.addNewTeacherByQR:
        return MaterialPageRoute(builder: (_) => const AddNewTeacherByQR());
        case RoutesManager.addNewTeacherDone:
        return MaterialPageRoute(builder: (_) => const AddNewTeacherDone());
        case RoutesManager.contactUS:
        return MaterialPageRoute(builder: (_) => const ContactUS());
        case RoutesManager.generalSettings:
        return MaterialPageRoute(builder: (_) => const GeneralSettings());
        case RoutesManager.notificationsCommon:
        return MaterialPageRoute(builder: (_) => const Notifications());
        case RoutesManager.helpBody:
        return MaterialPageRoute(builder: (_) => const HelpBody());
        case RoutesManager.yourOpinion:
        return MaterialPageRoute(builder: (_) => const YourOpinion());
        case RoutesManager.addOpinionDone:
        return MaterialPageRoute(builder: (_) => const AddOpinionDone());
        case RoutesManager.profileEditing:
        return MaterialPageRoute(builder: (_) => const ProfileEditing());
        case RoutesManager.resetEmail:
        return MaterialPageRoute(builder: (_) => const ResetEmail());
        case RoutesManager.resetEmailGetCode:
        return MaterialPageRoute(builder: (_) => const ResetEmailGetCode());
        case RoutesManager.setEmailNow:
        return MaterialPageRoute(builder: (_) => const SetEmailNow());
        case RoutesManager.resetEmailDone:
        return MaterialPageRoute(builder: (_) => const ResetEmailDone());
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
