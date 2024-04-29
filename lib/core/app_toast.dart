import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'app_constants/app_colors.dart';
import 'app_dimensions.dart';

class MyToast {
  static showMyToast({BuildContext? context, String? myMessage, IconData? myIcon}) {
    FToast fToast = FToast();
    AppDimensions.init(context: context, designHeight: 778, designWidth: 360);
    fToast.init(context!);

    Widget toast = Container(
      height: AppDimensions.getDimensions(requiredHeight: 45),
      width: AppDimensions.getDimensions(requiredWidth: 320),
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(10), color: AppColors.kMainTextBlack),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            myMessage!,
            textAlign: TextAlign.right,
            style: TextStyle(
              color: Colors.white,
              fontSize: AppDimensions.defaultSize * 14,
              fontFamily: 'Almarai',
              fontWeight: FontWeight.w400,
              height: 0.10,
            ),
          ),
          SizedBox(
            width: AppDimensions.getDimensions(requiredWidth: 5),
          ),
          InkWell(
              onTap: () {
                fToast.removeCustomToast();
              },
              child: Icon(myIcon, color: AppColors.kMainTextWhite)),
          SizedBox(
            width: AppDimensions.getDimensions(requiredWidth: 15),
          )
        ],
      ),
    );
    fToast.showToast(
      child: toast,
      gravity: ToastGravity.BOTTOM,
      toastDuration: const Duration(seconds: 3),
    );
  }
}
