import 'package:assiut_project/core/app_constants/app_assets.dart';
import 'package:assiut_project/core/app_constants/app_colors.dart';
import 'package:assiut_project/core/app_constants/app_lists.dart';
import 'package:assiut_project/core/app_constants/app_strings.dart';
import 'package:assiut_project/core/app_dimensions.dart';
import 'package:assiut_project/core/app_routes.dart';
import 'package:assiut_project/core/app_toast.dart';
import 'package:assiut_project/main_layers/presentaion_layer/common_files/conatct_us/main_container_contact_us_common.dart';
import 'package:assiut_project/main_layers/presentaion_layer/common_files/general%20_settings/toggle_buttons.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_app_bar.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_button_grey.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_text_black.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_text_grey.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/text_form_filed.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class GeneralSettings extends StatefulWidget {
  const GeneralSettings({Key? key}) : super(key: key);

  static int myIndex = 0;

  @override
  State<GeneralSettings> createState() => _GeneralSettingsState();
}

class _GeneralSettingsState extends State<GeneralSettings> {
  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context: context, designHeight: 778, designWidth: 360);
    return Scaffold(
      body: Column(
        children: [
          const MainAppBar(
            designHeight: 1006,
            designWidth: 360,
            myTitle: AppStrings.kGeneralSettingsCommon,
          ),
          SizedBox(
            height: AppDimensions.getDimensions(requiredHeight: 30),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const MainTextBlack(
                  myText: AppStrings.kAppSettingsCommon,
                  fontSize: 18,
                ),
                SizedBox(
                  height: AppDimensions.getDimensions(requiredHeight: 18),
                ),
                const MainTextGrey(
                  myText: AppStrings.kLanguageCommon,
                  color: AppColors.kHintCommon,
                  fontSize: 14,
                ),
                SizedBox(
                  height: AppDimensions.getDimensions(requiredHeight: 8),
                ),
                const CustomTextFormFiled(
                  hintText: AppStrings.kArabicCommon,
                  textDirection: TextDirection.rtl,
                  prefixIcon: Icon(Icons.arrow_left_rounded),
                  enabled: false,
                  hintStyle: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: AppColors.kHintCommon,
                    fontSize: 12,
                    fontFamily: 'Almarai',
                  ),
                ),
                SizedBox(
                  height: AppDimensions.getDimensions(requiredHeight: 40),
                ),
                const CustomToggleButton(),
                SizedBox(
                  height: AppDimensions.getDimensions(requiredHeight: 40),
                ),
                const MainTextBlack(
                  myText: AppStrings.kAccountSettingsCommon,
                  fontSize: 16,
                ),
                SizedBox(
                  height: AppDimensions.getDimensions(requiredHeight: 18),
                ),
                Container(
                  height: AppDimensions.getDimensions(requiredHeight: 45),
                  width: AppDimensions.getDimensions(requiredWidth: 320),
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(10)),
                  child: MaterialButton(
                      color: AppColors.kButtonCommon,
                      shape: const RoundedRectangleBorder(),
                      onPressed: () {
                        showModalBottomSheet(
                          context: context,
                          builder: (context) {
                            return Container(
                              width: AppDimensions.getDimensions(
                                  requiredWidth: 360),
                              height: AppDimensions.getDimensions(
                                  requiredHeight: 190),
                              clipBehavior: Clip.antiAlias,
                              decoration: BoxDecoration(
                                  color: AppColors.kMainButtonText,
                                  borderRadius: BorderRadius.circular(20)),
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                  horizontal: AppDimensions.getDimensions(
                                      requiredWidth: 20),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    const MainTextBlack(
                                      myText: AppStrings.kMainDeleteAccount,
                                      fontSize: 18,
                                    ),
                                    SizedBox(
                                      height: AppDimensions.getDimensions(
                                          requiredHeight: 14),
                                    ),
                                    const MainTextGrey(
                                      myText: AppStrings.kHintDeleteAccount,
                                      color: AppColors.kDetailsProfileEditing,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                    ),
                                    SizedBox(
                                      height: AppDimensions.getDimensions(
                                          requiredHeight: 12),
                                    ),
                                    Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Container(
                                            height: AppDimensions.getDimensions(
                                                requiredHeight: 48),
                                            width: AppDimensions.getDimensions(
                                                requiredWidth: 136),
                                            clipBehavior:
                                                Clip.antiAliasWithSaveLayer,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(10)),
                                            child: MaterialButton(
                                                color: AppColors
                                                    .kMainScreenNewVersionButton,
                                                shape:
                                                    const RoundedRectangleBorder(),
                                                onPressed: () {
                                                  Navigator.pop(context);
                                                },
                                                child: const Text(
                                                  AppStrings.kBackDeleteAccount,
                                                  style: TextStyle(
                                                      fontFamily: 'Almarai',
                                                      color: AppColors
                                                          .kMainScreenNewVersionButtonText,
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      fontSize: 16),
                                                )),
                                          ),
                                          SizedBox(
                                            width: AppDimensions.getDimensions(
                                                requiredWidth: 10),
                                          ),
                                          Container(
                                            height: AppDimensions.getDimensions(
                                                requiredHeight: 48),
                                            width: AppDimensions.getDimensions(
                                                requiredWidth: 136),
                                            clipBehavior:
                                                Clip.antiAliasWithSaveLayer,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(10)),
                                            child: MaterialButton(
                                                color: AppColors.kMainButton,
                                                shape:
                                                    const RoundedRectangleBorder(),
                                                onPressed: () {
                                                  Navigator
                                                      .pushReplacementNamed(
                                                          context,
                                                          RoutesManager
                                                              .accountType);
                                                  MyToast.showMyToast(
                                                    context: context,
                                                    myMessage:
                                                        AppStrings.kDeleteToast,
                                                    myIcon: Icons.close_rounded,
                                                  );
                                                },
                                                child: const Text(
                                                  AppStrings
                                                      .kActualDeleteAccount,
                                                  style: TextStyle(
                                                      fontFamily: 'Almarai',
                                                      color: AppColors
                                                          .kMainButtonText,
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      fontSize: 16),
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
                      child: const Text(
                        AppStrings.kRemoveAccountCommon,
                        style: TextStyle(
                            fontFamily: 'Almarai',
                            color: AppColors.kTextButtonCommon,
                            fontWeight: FontWeight.w700,
                            fontSize: 12),
                      )),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}


