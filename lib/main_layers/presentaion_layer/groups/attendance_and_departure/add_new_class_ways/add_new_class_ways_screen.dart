import 'package:assiut_project/core/app_constants/app_colors.dart';
import 'package:assiut_project/core/app_constants/app_strings.dart';
import 'package:assiut_project/core/app_dimensions.dart';
import 'package:assiut_project/core/app_routes.dart';
import 'package:assiut_project/main_layers/presentaion_layer/groups/add_new_student/add_new_student_ways/add_new_student_with_phone/add_new_student_with_phone_screen.dart';
import 'package:assiut_project/main_layers/presentaion_layer/groups/attendance_and_departure/add_new_class_ways/add_new_class_with_email/add_new_class_with_email_screen.dart';
import 'package:assiut_project/main_layers/presentaion_layer/groups/attendance_and_departure/add_new_class_ways/add_new_class_with_phone/add_new_class_with_phone_screen.dart';
import 'package:assiut_project/main_layers/presentaion_layer/groups/shared_components_groups/hint_text_groups.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_button_grey.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_button_red.dart';
import 'package:flutter/material.dart';



class AddNewClassWays extends StatefulWidget {
  const AddNewClassWays({Key? key}) : super(key: key);

  static int myIndex = 0;

  @override
  State<AddNewClassWays> createState() => _AddNewStudentWaysState();
}

class _AddNewStudentWaysState extends State<AddNewClassWays> {
  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context: context, designHeight: 778, designWidth: 360);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: AppDimensions.getDimensions(requiredHeight: 34.16),
              width: AppDimensions.getDimensions(requiredWidth: 99.94),
              decoration: BoxDecoration(
                  color: AddNewClassWays.myIndex == 0
                      ? AppColors.kForgetPasswordToggleSelectedButtonColor
                      : AppColors.kForgetPasswordToggleButtonColor,
                  borderRadius: BorderRadius.circular(10)),
              child: MaterialButton(
                padding: const EdgeInsets.all(0),
                child: Text(
                  AppStrings.kForgetPasswordButtonEmail,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: AddNewClassWays.myIndex == 0
                        ? AppColors.kForgetPasswordToggleSelectedButtonText
                        : AppColors.kForgetPasswordToggleButtonText,
                    fontSize: 12,
                    fontFamily: 'Almarai',
                  ),
                ),
                onPressed: () {
                  setState(() {
                    AddNewClassWays.myIndex = 0;
                  });
                },
              ),
            ),
            //AppColors.kForgetPasswordToggleSelectedButtonColor
            Container(
              height: AppDimensions.getDimensions(requiredHeight: 34.16),
              width: AppDimensions.getDimensions(requiredWidth: 99.94),
              decoration: BoxDecoration(
                  color: AddNewClassWays.myIndex == 1
                      ? AppColors.kForgetPasswordToggleSelectedButtonColor
                      : AppColors.kForgetPasswordToggleButtonColor,
                  borderRadius: BorderRadius.circular(10)),
              child: MaterialButton(
                padding: const EdgeInsets.all(0),
                child: Text(
                  AppStrings.kForgetPasswordButtonPhone,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: AddNewClassWays.myIndex == 1
                        ? AppColors.kForgetPasswordToggleSelectedButtonText
                        : AppColors.kForgetPasswordToggleButtonText,
                    fontSize: 12,
                    fontFamily: 'Almarai',
                  ),
                ),
                onPressed: () {
                  setState(() {
                    AddNewClassWays.myIndex = 1;
                  });
                },
              ),
            ),
          ],
        ),
        SizedBox(
          height: AppDimensions.getDimensions(requiredHeight: 25),
        ),
        AddNewClassWays.myIndex == 0
            ? const AddNewClassWithEmail()
            : const AddNewClassWithPhone(),
        MainButtonRed(
          buttonName: AppStrings.kStudentSignToClassButtonGroups,
          onPressed: () {
            Navigator.pushReplacementNamed(context, RoutesManager.addNewClassDone);
          },
        ),
        SizedBox(
          height: AppDimensions.getDimensions(requiredHeight: 23),
        ),
        Row(
          children: [
            Container(
              height: AppDimensions.getDimensions(requiredHeight: 3),
              width: AppDimensions.getDimensions(requiredWidth: 144),
              color: AppColors.kSplitterMainScreenHome,
            ),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: AppDimensions
                  .getDimensions(requiredWidth: 11)),
              child: const HintTextGroups(
                myText: AppStrings.kORGroups,
                fontSize: 12,
                fontWeight: FontWeight.w700,
              ),
            ),
            Container(
              height: AppDimensions.getDimensions(requiredHeight: 3),
              width: AppDimensions.getDimensions(requiredWidth: 144),
              color: AppColors.kSplitterMainScreenHome,
            ),
          ],
        ),
        SizedBox(
          height: AppDimensions.getDimensions(requiredHeight: 23),
        ),
        MainButtonGrey(
          buttonName: AppStrings.kScanButtonTextGroups,
          onPressed: () {
            Navigator.pushNamed(context, RoutesManager.addNewClassByQR);

          },
        )
      ],
    );
  }
}
