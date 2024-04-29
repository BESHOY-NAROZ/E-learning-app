import 'package:assiut_project/core/app_constants/app_colors.dart';
import 'package:assiut_project/core/app_constants/app_strings.dart';
import 'package:assiut_project/core/app_dimensions.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_add_small_button.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_button_red.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_text_blue.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_text_grey.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/separator.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/text_form_filed.dart';
import 'package:flutter/material.dart';

class AddSpecificTypeBottomSheetTeacher extends StatelessWidget {
  const AddSpecificTypeBottomSheetTeacher({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context: context, designHeight: 778, designWidth: 360);

    return MainAddSmallButton(
      myText: AppStrings.kAddChoicesCreateCustomExam,
      requiredWidth: 114,
      onPressed: () {
        showModalBottomSheet(
          context: context,
          builder: (context) {
            return Container(
              width: AppDimensions.getDimensions(requiredWidth: 360),
              height: AppDimensions.getDimensions(requiredHeight: 290),
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                  color: AppColors.kMainTextWhite, borderRadius: BorderRadius.circular(20)),
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: AppDimensions.getDimensions(requiredWidth: 20),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 14),
                    ),
                    const Align(
                      alignment: Alignment.center,
                      child: Separator(
                        designHeight: 4,
                        designWidth: 68,
                      ),
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 10),
                    ),
                    MainTextBlue(
                      myText: AppStrings.kAddChoiceBottomSheet,
                      color: AppColors.kMainBlueC4,
                      fontSize: AppDimensions.defaultSize * 16,
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 11),
                    ),
                    MainTextGrey(
                      myText: AppStrings.kChoiceRouteBottomSheet,
                      color: AppColors.kMainGery7A,
                      fontSize: AppDimensions.defaultSize * 12,
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 12),
                    ),
                    CustomTextFormFiled(
                      hintText: AppStrings.kFirstTestCreateCustomExam,
                      textDirection: TextDirection.rtl,
                      hintStyle: TextStyle(
                        fontSize: AppDimensions.defaultSize * 12,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Almarai',
                        color: AppColors.kDetailsProfileEditing,
                      ),
                    ),
                    const Spacer(),
                    MainButtonRed(
                      buttonName: AppStrings.kAddBottomSheet,
                      onPressed: () {},
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 30),
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }
}
