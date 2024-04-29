import 'package:assiut_project/core/app_constants/app_colors.dart';
import 'package:assiut_project/core/app_dimensions.dart';
import 'package:flutter/material.dart';

class AppBarSignIn extends StatelessWidget implements PreferredSize {
  final String? myTitle;
  const AppBarSignIn({Key? key, this.myTitle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context: context, designHeight: 778, designWidth: 360);
    return PreferredSize(
        preferredSize: Size(AppDimensions.getDimensions(requiredWidth: 360),
            AppDimensions.getDimensions(requiredHeight: 100)),
        child: AppBar(
          centerTitle: true,
          backgroundColor: AppColors.kAppBarLogin,
          actions: [
            SizedBox(
              width: AppDimensions.getDimensions(requiredWidth: 45),
              height: AppDimensions.getDimensions(requiredHeight: 45),
              child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        AppColors.kAppBarLoginBack.withOpacity(0.1)),
                    elevation: MaterialStateProperty.all(0),
                    padding: MaterialStateProperty.all(EdgeInsets.zero)),
                child: const Icon(
                  Icons.arrow_forward_ios_outlined,
                  color: Colors.white,
                ),
                onPressed: () {},
              ),
            ),
          ],
          title: Text(
            myTitle!,
            style: TextStyle(
                color: AppColors.kAppBarLoginTitle,
                fontFamily: 'Almarai',
                fontSize: AppDimensions.defaultSize * 20,
                fontWeight: FontWeight.w700),
          ),
        ));
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size(AppDimensions.getDimensions(requiredWidth: 360),
      AppDimensions.getDimensions(requiredHeight: 100));

  @override
  // TODO: implement child
  Widget get child => throw UnimplementedError();
}
