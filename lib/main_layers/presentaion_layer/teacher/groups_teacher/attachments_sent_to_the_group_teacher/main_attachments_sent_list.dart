import 'package:assiut_project/core/app_constants/app_assets.dart';
import 'package:assiut_project/core/app_constants/app_colors.dart';
import 'package:assiut_project/core/app_constants/app_strings.dart';
import 'package:assiut_project/core/app_dimensions.dart';
import 'package:assiut_project/core/app_routes.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/custom_widgets/main_text_black.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/custom_widgets/main_text_grey.dart';
import 'package:assiut_project/main_layers/presentaion_layer/teacher/groups_teacher/attachments_sent_to_the_group_teacher/remove_specific_attachment_bottom_sheet.dart';
import 'package:flutter/material.dart';

class MainAttachmentsSentList extends StatelessWidget {
  const MainAttachmentsSentList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context: context, designHeight: 778, designWidth: 360);
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, RoutesManager.explanationAttachedTeacher);
      },
      child: Container(
        height: AppDimensions.getDimensions(requiredHeight: 57),
        width: AppDimensions.getDimensions(requiredWidth: 320),
        padding: EdgeInsets.symmetric(horizontal: AppDimensions.getDimensions(requiredWidth: 14)),
        decoration:
            BoxDecoration(borderRadius: BorderRadius.circular(8), color: AppColors.kMainGeryFA),
        child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
          const RemoveSpecificAttachmentBottomSheetTeacher(),
          const Spacer(),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MainTextBlack(
                myText: AppStrings.transitionalElementsNewAttached,
                fontSize: AppDimensions.defaultSize * 16,
                color: AppColors.kMainBlack,
              ),
              SizedBox(
                height: AppDimensions.getDimensions(requiredHeight: 3),
              ),
              MainTextGrey(
                myText: AppStrings.biologyNewAttached,
                fontSize: AppDimensions.defaultSize * 10,
                color: AppColors.kMainGery8D,
              )
            ],
          ),
          SizedBox(
            width: AppDimensions.getDimensions(requiredWidth: 11),
          ),
          Image.asset(
            AppAssets.kAttached,
            color: AppColors.kMainBlack,
            height: AppDimensions.getDimensions(requiredHeight: 30),
            width: AppDimensions.getDimensions(requiredWidth: 30),
          )
        ]),
      ),
    );
  }
}
