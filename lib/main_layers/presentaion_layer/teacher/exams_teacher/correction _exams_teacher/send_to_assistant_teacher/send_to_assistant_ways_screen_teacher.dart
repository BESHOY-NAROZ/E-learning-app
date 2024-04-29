import 'package:assiut_project/core/app_constants/app_colors.dart';
import 'package:assiut_project/core/app_constants/app_strings.dart';
import 'package:assiut_project/core/app_dimensions.dart';
import 'package:assiut_project/core/app_routes.dart';
import 'package:assiut_project/main_layers/presentaion_layer/assistant/groups/shared_components_groups/hint_text_groups.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_button_grey.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_button_red.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/text_form_filed.dart';
import 'package:flutter/material.dart';

class SendToAssistantWaysTeacher extends StatefulWidget {
  const SendToAssistantWaysTeacher({Key? key}) : super(key: key);

  static int myIndex = 0;

  @override
  State<SendToAssistantWaysTeacher> createState() => _SendToAssistantWaysTeacherState();
}

class _SendToAssistantWaysTeacherState extends State<SendToAssistantWaysTeacher> {
  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context: context, designHeight: 778, designWidth: 360);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        HintTextGroups(
          myText: AppStrings.kEnterWaysExams,
          fontSize: AppDimensions.defaultSize * 12,
          fontWeight: FontWeight.w700,
        ),
        SizedBox(
          height: AppDimensions.getDimensions(requiredHeight: 20),
        ),
        const CustomTextFormFiled(
          hintText: AppStrings.kActualEnterWaysExams,
        ),
        SizedBox(
          height: AppDimensions.getDimensions(requiredHeight: 50),
        ),
        MainButtonRed(
          buttonName: AppStrings.kSendExamNowExams,
          onPressed: () {
            Navigator.pushNamed(context, RoutesManager.afterAddingAssistantTeacher);
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
              padding:
                  EdgeInsets.symmetric(horizontal: AppDimensions.getDimensions(requiredWidth: 11)),
              child: HintTextGroups(
                myText: AppStrings.kORGroups,
                fontSize: AppDimensions.defaultSize * 12,
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
            Navigator.pushNamed(context, RoutesManager.addingAssistantByQRTeacher);
          },
        )
      ],
    );
  }
}
