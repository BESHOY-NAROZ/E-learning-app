import 'package:assiut_project/core/app_constants/app_colors.dart';
import 'package:assiut_project/core/app_constants/app_lists.dart';
import 'package:assiut_project/core/app_constants/app_strings.dart';
import 'package:assiut_project/core/app_dimensions.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_text_grey.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/separator.dart';
import 'package:flutter/material.dart';

class CustomExpandedUnits extends StatefulWidget {
  const CustomExpandedUnits({Key? key}) : super(key: key);

  @override
  State<CustomExpandedUnits> createState() => _CustomExpandedUnitsState();
}

class _CustomExpandedUnitsState extends State<CustomExpandedUnits> {
  bool isUnitSelected = false;
  bool isClassSelected = true;
  bool isPartSelected = false;
  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context: context, designHeight: 778, designWidth: 360);

    return ListView.builder(
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) {
          return Column(
            children: [
              const Separator(
                designHeight: 2,
              ),
              SizedBox(
                height: AppDimensions.getDimensions(requiredHeight: 13),
              ),
              Container(
                height: AppDimensions.getDimensions(requiredHeight: 45),
                width: AppDimensions.getDimensions(requiredWidth: 320),
                padding: EdgeInsets.symmetric(
                    horizontal: AppDimensions.getDimensions(requiredWidth: 15)),
                decoration: BoxDecoration(
                    color: AppColors.kMainGeryFA, borderRadius: BorderRadius.circular(10)),
                child: Row(
                  children: [
                    Icon(
                      !isUnitSelected ? Icons.arrow_left_outlined : Icons.arrow_drop_down,
                      size: AppDimensions.getDimensions(requiredWidth: 20),
                    ),
                    const Spacer(),
                    const MainTextGrey(
                      myText: AppStrings.kFirstUnitCreateExam,
                      fontSize: 12,
                    ),
                    SizedBox(
                      width: AppDimensions.getDimensions(requiredWidth: 8),
                    ),
                    Checkbox(
                      value: isUnitSelected,
                      side: const BorderSide(
                        color: AppColors.kMainBlueAA,
                      ),
                      activeColor: AppColors.kMainBlueAA,
                      onChanged: (value) {
                        setState(() {
                          isUnitSelected = !isUnitSelected;
                        });
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: AppDimensions.getDimensions(requiredHeight: 11),
              ),
            ],
          );
        },
        itemCount: AppLists.kUnitsForExams.length);
  }
}
