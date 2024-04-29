import 'package:assiut_project/core/app_constants/app_colors.dart';
import 'package:assiut_project/core/app_constants/app_strings.dart';
import 'package:assiut_project/core/app_dimensions.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_text_grey.dart';
import 'package:flutter/material.dart';

class SelectAnswerRadio extends StatelessWidget {
  const SelectAnswerRadio({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context: context, designHeight: 778, designWidth: 360);

    return Column(children: [
      Container(
        height: AppDimensions.getDimensions(requiredHeight: 45),
        width: AppDimensions.getDimensions(requiredWidth: 320),
        decoration:
            BoxDecoration(borderRadius: BorderRadius.circular(10), color: AppColors.kMainGeryFA),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
              children: [
                MainTextGrey(
                  myText: AppStrings.kActualFirstChoiceExams,
                  fontSize: AppDimensions.defaultSize * 12,
                  fontWeight: FontWeight.w400,
                  textDirection: TextDirection.rtl,
                ),
                Text('   '),
                MainTextGrey(
                  myText: AppStrings.kFirstChoiceExams,
                  fontSize: AppDimensions.defaultSize * 12,
                  fontWeight: FontWeight.w800,
                  textDirection: TextDirection.rtl,
                ),
              ],
            ),
            SizedBox(
              width: AppDimensions.getDimensions(requiredWidth: 12),
            ),
            Radio(
              value: 1,
              groupValue: 1,
              visualDensity: const VisualDensity(
                  horizontal: VisualDensity.minimumDensity, vertical: VisualDensity.minimumDensity),
              fillColor: MaterialStateColor.resolveWith((states) => AppColors.kMainBlueC4),
              onChanged: (value) {},
            ),
            SizedBox(
              width: AppDimensions.getDimensions(requiredWidth: 13),
            ),
          ],
        ),
      ),
      SizedBox(
        height: AppDimensions.getDimensions(requiredHeight: 8),
      ),
      Container(
        height: AppDimensions.getDimensions(requiredHeight: 45),
        width: AppDimensions.getDimensions(requiredWidth: 320),
        decoration:
            BoxDecoration(borderRadius: BorderRadius.circular(10), color: AppColors.kMainGeryFA),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
              children: [
                MainTextGrey(
                  myText: AppStrings.kActualSecondChoiceExams,
                  fontSize: AppDimensions.defaultSize * 12,
                  fontWeight: FontWeight.w400,
                  textDirection: TextDirection.rtl,
                ),
                Text('  '),
                MainTextGrey(
                  myText: AppStrings.kSecondChoiceExams,
                  fontSize: AppDimensions.defaultSize * 12,
                  fontWeight: FontWeight.w800,
                  textDirection: TextDirection.rtl,
                ),
              ],
            ),
            SizedBox(
              width: AppDimensions.getDimensions(requiredWidth: 12),
            ),
            Radio(
              value: -1,
              groupValue: 1,
              visualDensity: const VisualDensity(
                  horizontal: VisualDensity.minimumDensity, vertical: VisualDensity.minimumDensity),
              fillColor: MaterialStateColor.resolveWith((states) => AppColors.kMainBlueC4),
              onChanged: (value) {},
            ),
            SizedBox(
              width: AppDimensions.getDimensions(requiredWidth: 13),
            ),
          ],
        ),
      ),
      SizedBox(
        height: AppDimensions.getDimensions(requiredHeight: 8),
      ),
      Container(
        height: AppDimensions.getDimensions(requiredHeight: 45),
        width: AppDimensions.getDimensions(requiredWidth: 320),
        decoration:
            BoxDecoration(borderRadius: BorderRadius.circular(10), color: AppColors.kMainGeryFA),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
              children: [
                MainTextGrey(
                  myText: AppStrings.kActualThirdChoiceExams,
                  fontSize: AppDimensions.defaultSize * 12,
                  fontWeight: FontWeight.w400,
                  textDirection: TextDirection.rtl,
                ),
                Text('   '),
                MainTextGrey(
                  myText: AppStrings.kThirdChoiceExams,
                  fontSize: AppDimensions.defaultSize * 12,
                  fontWeight: FontWeight.w800,
                  textDirection: TextDirection.rtl,
                ),
              ],
            ),
            SizedBox(
              width: AppDimensions.getDimensions(requiredWidth: 12),
            ),
            Radio(
              value: -1,
              groupValue: 1,
              visualDensity: const VisualDensity(
                  horizontal: VisualDensity.minimumDensity, vertical: VisualDensity.minimumDensity),
              fillColor: MaterialStateColor.resolveWith((states) => AppColors.kMainBlueC4),
              onChanged: (value) {},
            ),
            SizedBox(
              width: AppDimensions.getDimensions(requiredWidth: 13),
            ),
          ],
        ),
      ),
    ]);
  }
}
