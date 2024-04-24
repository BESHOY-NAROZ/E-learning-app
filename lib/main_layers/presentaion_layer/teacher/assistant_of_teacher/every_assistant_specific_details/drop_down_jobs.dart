import 'package:assiut_project/core/app_constants/app_colors.dart';
import 'package:assiut_project/core/app_constants/app_strings.dart';
import 'package:assiut_project/core/app_dimensions.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_text_grey.dart';
import 'package:flutter/material.dart';

class DropDownJobs extends StatefulWidget {
  const DropDownJobs({Key? key}) : super(key: key);

  @override
  State<DropDownJobs> createState() => _DropDownJobsState();
}

class _DropDownJobsState extends State<DropDownJobs> {
  bool isDropped = false;
  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context: context, designHeight: 778, designWidth: 360);

    return Column(
      children: [
        InkWell(
          onTap: () {
            setState(() {
              isDropped = !isDropped;
            });
          },
          child: Container(
            height: AppDimensions.getDimensions(requiredHeight: 45),
            width: AppDimensions.getDimensions(requiredWidth: 320),
            decoration: BoxDecoration(
                color: AppColors.kMainGeryF0, borderRadius: BorderRadius.circular(10)),
            child: Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: AppDimensions.getDimensions(requiredWidth: 15)),
              child: Row(
                children: [
                  Icon(
                    isDropped ? Icons.arrow_drop_down : Icons.arrow_drop_up,
                    size: AppDimensions.getDimensions(requiredWidth: 20),
                  ),
                  const Spacer(),
                  const MainTextGrey(
                    myText: AppStrings.kAssistantJobAssistantOfTeacher,
                    color: AppColors.kMainGery6E,
                    fontSize: 12,
                  ),
                ],
              ),
            ),
          ),
        ),
        SizedBox(
          height: AppDimensions.getDimensions(requiredHeight: 12),
        ),
        if (isDropped)
          Container(
            height: AppDimensions.getDimensions(requiredHeight: 194),
            width: AppDimensions.getDimensions(requiredWidth: 301),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: AppColors.kMainGeryD9, width: 3)),
            child: Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: AppDimensions.getDimensions(requiredWidth: 10)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const MainTextGrey(
                        myText: AppStrings.kAddStudentsAssistantOfTeacher,
                        color: AppColors.kMainGery7A,
                        fontSize: 12,
                      ),
                      SizedBox(
                        width: AppDimensions.getDimensions(requiredWidth: 8),
                      ),
                      SizedBox(
                        height: AppDimensions.getDimensions(requiredHeight: 24),
                        width: AppDimensions.getDimensions(requiredWidth: 24),
                        child: Checkbox(
                          value: true,
                          side: const BorderSide(
                            color: AppColors.kMainBlueAA,
                          ),
                          activeColor: AppColors.kMainBlueAA,
                          onChanged: (value) {},
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const MainTextGrey(
                        myText: AppStrings.kRemoveStudentsAssistantOfTeacher,
                        color: AppColors.kMainGery7A,
                        fontSize: 12,
                      ),
                      SizedBox(
                        width: AppDimensions.getDimensions(requiredWidth: 8),
                      ),
                      SizedBox(
                        height: AppDimensions.getDimensions(requiredHeight: 24),
                        width: AppDimensions.getDimensions(requiredWidth: 24),
                        child: Checkbox(
                          value: false,
                          side: const BorderSide(
                            color: AppColors.kMainBlueAA,
                          ),
                          activeColor: AppColors.kMainBlueAA,
                          onChanged: (value) {},
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const MainTextGrey(
                        myText: AppStrings.kCreateGroupsAssistantOfTeacher,
                        color: AppColors.kMainGery7A,
                        fontSize: 12,
                      ),
                      SizedBox(
                        width: AppDimensions.getDimensions(requiredWidth: 8),
                      ),
                      SizedBox(
                        height: AppDimensions.getDimensions(requiredHeight: 24),
                        width: AppDimensions.getDimensions(requiredWidth: 24),
                        child: Checkbox(
                          value: false,
                          side: const BorderSide(
                            color: AppColors.kMainBlueAA,
                          ),
                          activeColor: AppColors.kMainBlueAA,
                          onChanged: (value) {},
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const MainTextGrey(
                        myText: AppStrings.kTakeAttendanceAssistantOfTeacher,
                        color: AppColors.kMainGery7A,
                        fontSize: 12,
                      ),
                      SizedBox(
                        width: AppDimensions.getDimensions(requiredWidth: 8),
                      ),
                      SizedBox(
                        height: AppDimensions.getDimensions(requiredHeight: 24),
                        width: AppDimensions.getDimensions(requiredWidth: 24),
                        child: Checkbox(
                          value: false,
                          side: const BorderSide(
                            color: AppColors.kMainBlueAA,
                          ),
                          activeColor: AppColors.kMainBlueAA,
                          onChanged: (value) {},
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const MainTextGrey(
                        myText: AppStrings.kSendNotificationsAssistantOfTeacher,
                        color: AppColors.kMainGery7A,
                        fontSize: 12,
                      ),
                      SizedBox(
                        width: AppDimensions.getDimensions(requiredWidth: 8),
                      ),
                      SizedBox(
                        height: AppDimensions.getDimensions(requiredHeight: 24),
                        width: AppDimensions.getDimensions(requiredWidth: 24),
                        child: Checkbox(
                          value: true,
                          side: const BorderSide(
                            color: AppColors.kMainBlueAA,
                          ),
                          activeColor: AppColors.kMainBlueAA,
                          onChanged: (value) {},
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
      ],
    );
  }
}
