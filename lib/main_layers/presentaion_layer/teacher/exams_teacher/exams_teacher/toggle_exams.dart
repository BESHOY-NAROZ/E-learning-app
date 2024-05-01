import 'package:assiut_project/core/app_constants/app_colors.dart';
import 'package:assiut_project/core/app_constants/app_lists.dart';
import 'package:assiut_project/core/app_dimensions.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/custom_widgets/main_text_grey.dart';
import 'package:flutter/material.dart';

class ToggleButtonsExams extends StatefulWidget {
  const ToggleButtonsExams({Key? key}) : super(key: key);

  @override
  State<ToggleButtonsExams> createState() => _ToggleButtonsExamsState();
}

class _ToggleButtonsExamsState extends State<ToggleButtonsExams> {
  int myIndex = 0;
  String sizer = AppLists.kExamsTypeList[0];

  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context: context, designHeight: 778, designWidth: 360);

    return Row(
      children: List.generate(AppLists.kExamsTypeList.length, (index) {
        return Container(
          clipBehavior: Clip.antiAliasWithSaveLayer,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
          child: SizedBox(
            height: AppDimensions.getDimensions(requiredHeight: 34),
            width: AppDimensions.getDimensions(
                requiredWidth: AppLists.kExamsTypeList[index] == sizer ? 174 : 136),
            child: MaterialButton(
              padding: EdgeInsets.zero,
              onPressed: () {
                setState(() {
                  myIndex = index;
                });
              },
              color: myIndex == index ? AppColors.kMainBlueA8 : AppColors.kMainGeryF0,
              child: MainTextGrey(
                myText: AppLists.kExamsTypeList[index],
                textDirection: TextDirection.rtl,
                color: myIndex == index ? AppColors.kMainGeryFA : null,
                fontSize: AppDimensions.defaultSize * 12,
              ),
            ),
          ),
        );
      }),
    );
  }
}
