import 'package:assiut_project/core/app_constants/app_assets.dart';
import 'package:assiut_project/core/app_constants/app_colors.dart';
import 'package:assiut_project/core/app_constants/app_strings.dart';
import 'package:assiut_project/core/app_dimensions.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_text_blue.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/main_text_grey.dart';
import 'package:flutter/material.dart';

class ChangePhotoSignUp extends StatelessWidget {
  const ChangePhotoSignUp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context: context, designHeight: 1247, designWidth: 360);
    return Center(
      child: Stack(
        children: [
          Container(
            height: AppDimensions.getDimensions(requiredHeight: 150),
            width: AppDimensions.getDimensions(requiredWidth: 150),
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: AppColors.kBorderProfileEditing, width: 3)),
            child: Image.asset(AppAssets.kStudentGroupsScreen),
          ),
          Positioned(
            top: AppDimensions.getDimensions(requiredHeight: 110),
            left: AppDimensions.getDimensions(requiredWidth: 90),
            child: Container(
              height: AppDimensions.getDimensions(requiredHeight: 35),
              width: AppDimensions.getDimensions(requiredWidth: 35),
              decoration: const BoxDecoration(
                color: AppColors.kChangeProfileEditing,
                shape: BoxShape.circle,
              ),
              child: InkWell(
                  onTap: () {
                    showModalBottomSheet(
                      context: context,
                      builder: (context) {
                        return Container(
                          width: AppDimensions.getDimensions(requiredWidth: 360),
                          height: AppDimensions.getDimensions(requiredHeight: 187),
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                              color: AppColors.kMainTextWhite,
                              borderRadius: BorderRadius.circular(20)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: AppDimensions.getDimensions(requiredWidth: 68),
                                height: AppDimensions.getDimensions(requiredHeight: 5),
                                decoration: BoxDecoration(
                                    color: AppColors.kLineBottomSheet,
                                    borderRadius: BorderRadius.circular(10)),
                              ),
                              SizedBox(
                                height: AppDimensions.getDimensions(requiredHeight: 18),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: AppDimensions.getDimensions(requiredWidth: 20)),
                                child: const Align(
                                  alignment: Alignment.centerRight,
                                  child: MainTextBlue(
                                    myText: AppStrings.kProfilePhotoBottomSheet,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: AppDimensions.getDimensions(requiredHeight: 12),
                              ),
                              Container(
                                width: AppDimensions.getDimensions(
                                  requiredWidth: 320,
                                ),
                                height: AppDimensions.getDimensions(requiredHeight: 45),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: AppColors.kMainGeryFA),
                                child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                                  const MainTextGrey(
                                    myText: AppStrings.kTakePhotoBottomSheet,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12,
                                  ),
                                  SizedBox(
                                    width: AppDimensions.getDimensions(requiredWidth: 6),
                                  ),
                                  Image.asset(AppAssets.kCamera,
                                      width: AppDimensions.getDimensions(requiredWidth: 24),
                                      height: AppDimensions.getDimensions(requiredHeight: 24)),
                                  SizedBox(
                                    width: AppDimensions.getDimensions(requiredWidth: 15),
                                  )
                                ]),
                              ),
                              SizedBox(
                                height: AppDimensions.getDimensions(requiredHeight: 8),
                              ),
                              Container(
                                width: AppDimensions.getDimensions(
                                  requiredWidth: 320,
                                ),
                                height: AppDimensions.getDimensions(requiredHeight: 45),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: AppColors.kMainGeryFA),
                                child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                                  const MainTextGrey(
                                    myText: AppStrings.kFromGallerySheet,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12,
                                  ),
                                  SizedBox(
                                    width: AppDimensions.getDimensions(requiredWidth: 6),
                                  ),
                                  Image.asset(AppAssets.kUpload,
                                      width: AppDimensions.getDimensions(requiredWidth: 24),
                                      height: AppDimensions.getDimensions(requiredHeight: 24)),
                                  SizedBox(
                                    width: AppDimensions.getDimensions(requiredWidth: 15),
                                  )
                                ]),
                              ),
                            ],
                          ),
                        );
                      },
                    );
                  },
                  child: const Icon(Icons.edit)),
            ),
          ),
        ],
      ),
    );
  }
}
