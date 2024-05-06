import 'package:assiut_project/core/app_constants/app_colors.dart';
import 'package:assiut_project/core/app_constants/app_strings.dart';
import 'package:assiut_project/core/app_dimensions.dart';
import 'package:assiut_project/core/app_routes.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/custom_widgets/main_add_small_button.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/custom_widgets/main_app_bar.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/custom_widgets/main_button_red.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/custom_widgets/main_text_black.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/custom_widgets/main_text_blue.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/custom_widgets/main_text_grey.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/custom_widgets/main_text_red.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/custom_widgets/text_form_filed.dart';
import 'package:flutter/material.dart';

class AddNewNumberTeacher extends StatefulWidget {
  const AddNewNumberTeacher({Key? key}) : super(key: key);

  @override
  State<AddNewNumberTeacher> createState() => _AddNewNumberTeacherState();
}

class _AddNewNumberTeacherState extends State<AddNewNumberTeacher> {
  int myCount = 1;

  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context: context, designHeight: 778, designWidth: 360);
    return Scaffold(
      body: Column(
        children: [
          const MainAppBar(
            designHeight: 1006,
            designWidth: 360,
            myTitle: AppStrings.kAddNewNumberAppbarProfileEditing,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 50),
                    ),
                    MainTextBlue(
                      myText: AppStrings.kAddNewNumberMainProfileEditing,
                      color: AppColors.kMainTextProfileEditing,
                      fontSize: AppDimensions.defaultSize * 18,
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 5),
                    ),
                    MainTextGrey(
                      myText: AppStrings.kAddNewNumberHintProfileEditing,
                      fontSize: AppDimensions.defaultSize * 12,
                      color: AppColors.kDetailsProfileEditing,
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 25),
                    ),
                    ListView.builder(
                      shrinkWrap: true,
                      itemCount: myCount,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: AppDimensions.getDimensions(requiredWidth: 8)),
                              child: Row(
                                children: [
                                  InkWell(
                                    onTap: () {
                                      showModalBottomSheet(
                                        context: context,
                                        isScrollControlled: true,
                                        constraints: const BoxConstraints(
                                          maxWidth: double.infinity,
                                        ),
                                        builder: (context) {
                                          return Container(
                                            width: AppDimensions.getDimensions(requiredWidth: 360),
                                            height:
                                                AppDimensions.getDimensions(requiredHeight: 160),
                                            clipBehavior: Clip.antiAlias,
                                            decoration: BoxDecoration(
                                                color: AppColors.kMainTextWhite,
                                                borderRadius: BorderRadius.circular(20)),
                                            child: Padding(
                                              padding: EdgeInsets.symmetric(
                                                horizontal:
                                                    AppDimensions.getDimensions(requiredWidth: 20),
                                              ),
                                              child: Column(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                crossAxisAlignment: CrossAxisAlignment.end,
                                                children: [
                                                  MainTextBlack(
                                                    myText: AppStrings.kMainRemoveSheet,
                                                    fontSize: AppDimensions.defaultSize * 18,
                                                  ),
                                                  SizedBox(
                                                    height: AppDimensions.getDimensions(
                                                        requiredHeight: 8),
                                                  ),
                                                  MainTextGrey(
                                                    myText: AppStrings.kHintRemoveSheet,
                                                    color: AppColors.kDetailsProfileEditing,
                                                    fontSize: AppDimensions.defaultSize * 14,
                                                    fontWeight: FontWeight.w400,
                                                  ),
                                                  SizedBox(
                                                    height: AppDimensions.getDimensions(
                                                        requiredHeight: 18),
                                                  ),
                                                  Row(
                                                      mainAxisAlignment: MainAxisAlignment.center,
                                                      children: [
                                                        Container(
                                                          height: AppDimensions.getDimensions(
                                                              requiredHeight: 45),
                                                          width: AppDimensions.getDimensions(
                                                              requiredWidth: 136),
                                                          clipBehavior: Clip.antiAliasWithSaveLayer,
                                                          decoration: BoxDecoration(
                                                              borderRadius:
                                                                  BorderRadius.circular(10)),
                                                          child: MaterialButton(
                                                              color: AppColors
                                                                  .kMainScreenNewVersionButton,
                                                              shape: const RoundedRectangleBorder(),
                                                              onPressed: () {
                                                                Navigator.pop(context);
                                                              },
                                                              child: Text(
                                                                AppStrings.kBackRemoveSheet,
                                                                style: TextStyle(
                                                                    fontFamily: 'Almarai',
                                                                    color: AppColors
                                                                        .kMainScreenNewVersionButtonText,
                                                                    fontWeight: FontWeight.w700,
                                                                    fontSize:
                                                                        AppDimensions.defaultSize *
                                                                            16),
                                                              )),
                                                        ),
                                                        SizedBox(
                                                          width: AppDimensions.getDimensions(
                                                              requiredWidth: 10),
                                                        ),
                                                        Container(
                                                          height: AppDimensions.getDimensions(
                                                              requiredHeight: 45),
                                                          width: AppDimensions.getDimensions(
                                                              requiredWidth: 136),
                                                          clipBehavior: Clip.antiAliasWithSaveLayer,
                                                          decoration: BoxDecoration(
                                                              borderRadius:
                                                                  BorderRadius.circular(10)),
                                                          child: MaterialButton(
                                                              color: AppColors.kMainButton,
                                                              shape: const RoundedRectangleBorder(),
                                                              onPressed: () {
                                                                setState(() {
                                                                  myCount--;
                                                                });
                                                                Navigator.pop(context);
                                                              },
                                                              child: Text(
                                                                AppStrings.kActualRemoveSheet,
                                                                style: TextStyle(
                                                                    fontFamily: 'Almarai',
                                                                    color: AppColors.kMainTextWhite,
                                                                    fontWeight: FontWeight.w700,
                                                                    fontSize:
                                                                        AppDimensions.defaultSize *
                                                                            16),
                                                              )),
                                                        ),
                                                        SizedBox(
                                                          width: AppDimensions.getDimensions(
                                                              requiredWidth: 15),
                                                        )
                                                      ]),
                                                ],
                                              ),
                                            ),
                                          );
                                        },
                                      );
                                    },
                                    child: const MainTextRed(
                                      myText: AppStrings.kRemoveProfileEditing,
                                    ),
                                  ),
                                  const Spacer(),
                                  MainTextGrey(
                                    myText: AppStrings.kPhoneNumberHintProfileEditing,
                                    fontSize: AppDimensions.defaultSize * 12,
                                    color: AppColors.kDetailsProfileEditing,
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: AppDimensions.getDimensions(requiredHeight: 8),
                            ),
                            const CustomTextFormFiled(),
                            SizedBox(
                              height: AppDimensions.getDimensions(requiredHeight: 15),
                            ),
                          ],
                        );
                      },
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: MainAddSmallButton(
                        myText: AppStrings.kAddNewNumberSmallButtonProfileEditing,
                        requiredWidth: 126,
                        onPressed: () {
                          setState(() {
                            myCount++;
                          });
                        },
                      ),
                    ),
                    SizedBox(
                      height: AppDimensions.getDimensions(requiredHeight: 50),
                    ),
                    MainButtonRed(
                      buttonName: AppStrings.kAddNewNumberButtonProfileEditing,
                      onPressed: () {
                        Navigator.pushNamed(context, RoutesManager.addNewNumberDoneTeacher);
                      },
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

// RemoveNumberBottomSheet
