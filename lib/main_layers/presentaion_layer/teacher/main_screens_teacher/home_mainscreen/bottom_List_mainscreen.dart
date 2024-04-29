import 'package:assiut_project/core/app_constants/app_assets.dart';
import 'package:assiut_project/core/app_constants/app_colors.dart';
import 'package:assiut_project/core/app_constants/app_strings.dart';
import 'package:assiut_project/core/app_dimensions.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_text_black.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_text_white.dart';
import 'package:flutter/material.dart';

class BottomListMainScreenTeacher extends StatelessWidget {
  const BottomListMainScreenTeacher({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context: context, designHeight: 778, designWidth: 360);
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      itemCount: 2,
      scrollDirection: Axis.vertical,
      itemBuilder: (context, index) {
        return Container(
          margin: EdgeInsets.only(left: AppDimensions.getDimensions(requiredWidth: 19)),
          height: AppDimensions.getDimensions(requiredHeight: 100),
          width: AppDimensions.getDimensions(requiredWidth: 320),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8), color: AppColors.kSentExamsContainerGroups),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SizedBox(
                width: AppDimensions.getDimensions(requiredWidth: 3),
              ),
              Padding(
                padding: EdgeInsets.only(right: AppDimensions.getDimensions(requiredWidth: 9)),
                child: MainTextBlack(
                  myText: AppStrings.kExamsSentBlackTextGroups,
                  fontSize: AppDimensions.defaultSize * 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: AppDimensions.getDimensions(requiredWidth: 9)),
                child: Text(
                  AppStrings.kExamsSentGreyTextGroups,
                  style: TextStyle(
                      fontSize: AppDimensions.defaultSize * 12,
                      fontWeight: FontWeight.w700,
                      color: AppColors.kSentGreyTextGroups),
                ),
              ),
              const Spacer(),
              Container(
                padding: EdgeInsets.zero,
                width: double.infinity,
                height: AppDimensions.getDimensions(requiredHeight: 35),
                decoration: const BoxDecoration(
                    color: AppColors.kBottomContainerGroups,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(8), bottomRight: Radius.circular(8))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(children: [
                      MainTextWhite(
                        myText: AppStrings.kSendToGroupHome,
                        fontSize: AppDimensions.defaultSize * 12,
                        fontWeight: FontWeight.w700,
                      ),
                      SizedBox(
                        width: AppDimensions.getDimensions(requiredWidth: 3),
                      ),
                      SizedBox(
                          width: AppDimensions.getDimensions(requiredWidth: 14),
                          height: AppDimensions.getDimensions(requiredHeight: 14),
                          child: Image.asset(
                            AppAssets.kVector3HomeScreen,
                            color: AppColors.kMainTextWhite,
                            width: AppDimensions.getDimensions(requiredWidth: 15),
                            height: AppDimensions.getDimensions(requiredHeight: 15),
                          )),
                    ]),
                    SizedBox(
                      width: AppDimensions.getDimensions(requiredWidth: 40),
                    ),
                    Row(children: [
                      MainTextWhite(
                        myText: AppStrings.kRemoveHome,
                        fontSize: AppDimensions.defaultSize * 12,
                        fontWeight: FontWeight.w700,
                      ),
                      SizedBox(
                        width: AppDimensions.getDimensions(requiredWidth: 2),
                      ),
                      SizedBox(
                          width: AppDimensions.getDimensions(requiredWidth: 14),
                          height: AppDimensions.getDimensions(requiredHeight: 14),
                          child: Icon(
                            Icons.delete_sharp,
                            color: AppColors.kMainTextWhite,
                            size: AppDimensions.defaultSize * 18,
                          )),
                    ]),
                    SizedBox(
                      width: AppDimensions.getDimensions(requiredWidth: 50),
                    ),
                    Row(children: [
                      MainTextWhite(
                        myText: AppStrings.kEditHome,
                        fontSize: AppDimensions.defaultSize * 12,
                        fontWeight: FontWeight.w700,
                      ),
                      SizedBox(
                        width: AppDimensions.getDimensions(requiredWidth: 3),
                      ),
                      Icon(
                        Icons.edit,
                        color: AppColors.kMainTextWhite,
                        size: AppDimensions.defaultSize * 18,
                      ),
                    ]),
                  ],
                ),
              )
            ],
          ),
        );
      },
      separatorBuilder: (context, index) {
        return SizedBox(height: AppDimensions.getDimensions(requiredHeight: 10));
      },
    );
  }
}
