import 'package:flutter/material.dart';

class AppDimensions {
  static late double? _designHeight;
  static late double? _designWidth;

  static late double? screenWidth;
  static late double? screenHeight;

  static late double _screenHeightFinal;
  static late double _screenWidthFinal;

  static late double defaultSize;
  static Orientation? orientation;

  static void init({BuildContext? context, double? designHeight, double? designWidth}) {
    _designHeight = designHeight;
    _designWidth = designWidth;

    screenWidth = MediaQuery.of(context!).size.width;
    screenHeight = MediaQuery.of(context).size.height;
    defaultSize = screenHeight! / 820;
    // defaultSize = (screenHeight! - screenWidth! / .005);
    // defaultSize = screenWidth! * .00255;
  }

//screenWidth! * .00255;
  static double getDimensions({double? requiredHeight = 0, double? requiredWidth = 0}) {
    double dimension;

    _screenHeightFinal = screenHeight! * (requiredHeight! / _designHeight!);
    _screenWidthFinal = screenWidth! * (requiredWidth! / _designWidth!);
    if (requiredHeight != 0) {
      dimension = _screenHeightFinal;
    } else {
      dimension = _screenWidthFinal;
    }
    return dimension;
  }
}
