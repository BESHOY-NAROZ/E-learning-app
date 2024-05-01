import 'package:assiut_project/core/app_constants/app_colors.dart';
import 'package:assiut_project/core/app_constants/app_lists.dart';
import 'package:assiut_project/core/app_dimensions.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/custom_widgets/main_text_grey.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/custom_widgets/separator.dart';
import 'package:flutter/material.dart';

class CustomExpandedSubjects extends StatefulWidget {
  const CustomExpandedSubjects({Key? key}) : super(key: key);

  @override
  State<CustomExpandedSubjects> createState() => _CustomExpandedSubjectsState();
}

class _CustomExpandedSubjectsState extends State<CustomExpandedSubjects> {
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
                      !AppLists.kBoolUnitsForExams[index]
                          ? Icons.arrow_left_outlined
                          : Icons.arrow_drop_down,
                      size: AppDimensions.getDimensions(requiredHeight: 20),
                    ),
                    const Spacer(),
                    MainTextGrey(
                      myText: AppLists.kUnitsForExams[index],
                      fontSize: AppDimensions.defaultSize * 12,
                    ),
                    SizedBox(
                      width: AppDimensions.getDimensions(requiredWidth: 8),
                    ),
                    Checkbox(
                      value: AppLists.kBoolUnitsForExams[index],
                      side: const BorderSide(
                        color: AppColors.kMainBlueAA,
                      ),
                      activeColor: AppColors.kMainBlueAA,
                      onChanged: (value) {
                        setState(() {
                          AppLists.kBoolUnitsForExams[index] = !AppLists.kBoolUnitsForExams[index];
                        });
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: AppDimensions.getDimensions(requiredHeight: 11),
              ),
              if (AppLists.kBoolUnitsForExams[index] == true) const CustomExpandedClasses()
            ],
          );
        },
        itemCount: AppLists.kUnitsForExams.length);
  }
}

///////////////////////////////////////////////////////////////////////////////////////////////

class CustomExpandedClasses extends StatefulWidget {
  const CustomExpandedClasses({Key? key}) : super(key: key);

  @override
  State<CustomExpandedClasses> createState() => _CustomExpandedClassesState();
}

class _CustomExpandedClassesState extends State<CustomExpandedClasses> {
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
              SizedBox(
                height: AppDimensions.getDimensions(requiredHeight: 2),
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
                      !AppLists.kBoolClassesForExams[index]
                          ? Icons.arrow_left_outlined
                          : Icons.arrow_drop_down,
                      size: AppDimensions.getDimensions(requiredHeight: 20),
                    ),
                    const Spacer(),
                    MainTextGrey(
                      myText: AppLists.kClassesForExams[index],
                      fontSize: AppDimensions.defaultSize * 12,
                    ),
                    SizedBox(
                      width: AppDimensions.getDimensions(requiredWidth: 8),
                    ),
                    Checkbox(
                      value: AppLists.kBoolClassesForExams[index],
                      side: const BorderSide(
                        color: AppColors.kMainBlueAA,
                      ),
                      activeColor: AppColors.kMainBlueAA,
                      onChanged: (value) {
                        setState(() {
                          AppLists.kBoolClassesForExams[index] =
                              !AppLists.kBoolClassesForExams[index];
                        });
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: AppDimensions.getDimensions(requiredHeight: 11),
              ),
              if (AppLists.kBoolClassesForExams[index] == true) const CustomExpandedParts()
            ],
          );
        },
        itemCount: AppLists.kClassesForExams.length);
  }
}

class CustomExpandedParts extends StatefulWidget {
  const CustomExpandedParts({Key? key}) : super(key: key);

  @override
  State<CustomExpandedParts> createState() => _CustomExpandedPartsState();
}

class _CustomExpandedPartsState extends State<CustomExpandedParts> {
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
              SizedBox(
                height: AppDimensions.getDimensions(requiredHeight: 2),
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
                      !AppLists.kBoolPartsForExams[index]
                          ? Icons.arrow_left_outlined
                          : Icons.arrow_drop_down,
                      size: AppDimensions.getDimensions(requiredHeight: 20),
                    ),
                    const Spacer(),
                    MainTextGrey(
                      myText: AppLists.kPartsForExams[index],
                      fontSize: AppDimensions.defaultSize * 12,
                    ),
                    SizedBox(
                      width: AppDimensions.getDimensions(requiredWidth: 8),
                    ),
                    Checkbox(
                      value: AppLists.kBoolPartsForExams[index],
                      side: const BorderSide(
                        color: AppColors.kMainBlueAA,
                      ),
                      activeColor: AppColors.kMainBlueAA,
                      onChanged: (value) {
                        setState(() {
                          AppLists.kBoolPartsForExams[index] = !AppLists.kBoolPartsForExams[index];
                        });
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: AppDimensions.getDimensions(requiredHeight: 11),
              ),
              if (AppLists.kBoolPartsForExams[index] == true) const CustomExpandedLessons()
            ],
          );
        },
        itemCount: AppLists.kPartsForExams.length);
  }
}

class CustomExpandedLessons extends StatelessWidget {
  const CustomExpandedLessons({Key? key}) : super(key: key);

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
              SizedBox(
                height: AppDimensions.getDimensions(requiredHeight: 2),
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
                      Icons.arrow_left_outlined,
                      size: AppDimensions.getDimensions(requiredHeight: 20),
                    ),
                    const Spacer(),
                    MainTextGrey(
                      myText: AppLists.kLessonsForExams[index],
                      fontSize: AppDimensions.defaultSize * 12,
                    ),
                    SizedBox(
                      width: AppDimensions.getDimensions(requiredWidth: 8),
                    ),
                    Checkbox(
                      value: false,
                      side: const BorderSide(
                        color: AppColors.kMainBlueAA,
                      ),
                      activeColor: AppColors.kMainBlueAA,
                      onChanged: (value) {},
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
        itemCount: AppLists.kLessonsForExams.length);
  }
}
