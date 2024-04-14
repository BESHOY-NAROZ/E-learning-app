import 'package:assiut_project/core/app_constants/app_colors.dart';
import 'package:assiut_project/core/app_dimensions.dart';
import 'package:assiut_project/core/app_routes.dart';
import 'package:flutter/material.dart';

class SmallButtonGroups extends StatelessWidget {

  final String? myText;

  const SmallButtonGroups({
    super.key,
    this.myText,
  });

  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context: context, designHeight: 778, designWidth: 360);

    return Container(
        width: AppDimensions.getDimensions(requiredWidth: 98),

        padding: const EdgeInsets.all(0),

        decoration: BoxDecoration(
          color: AppColors.kSmallButtonMainScreenHome,
          borderRadius: BorderRadius.circular(20),
        ),
        child: IconButton(
          onPressed: () {
            Navigator.pushNamed(context, RoutesManager.addNewStudent);
          },
          padding: const EdgeInsets.all(0),
          icon: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              const Icon(
                Icons.add_circle_outlined,
                color: AppColors.kSmallButtonTextMainScreenHome,

              ),
              SizedBox(
                width: AppDimensions.getDimensions(requiredWidth: 3),
              ),
              Text(
                myText!,
                style: const TextStyle(
                    fontFamily: 'Almarai',
                    color: AppColors.kSmallButtonTextMainScreenHome,
                    fontWeight: FontWeight.w700,
                    fontSize: 10),
              ),
            ],
          ),
        ));
  }
}
