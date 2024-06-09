
import 'package:flutter/material.dart';

abstract class StyleManager {

  static TextStyle? getStyleLight(BuildContext context){
    return Theme.of(context).textTheme.displaySmall;
  }

  static TextStyle? getStyleRegular(BuildContext context){
    return Theme.of(context).textTheme.displayMedium;
  }

  static TextStyle? getStyleMedium(BuildContext context){
    return Theme.of(context).textTheme.displayLarge;
  }

  static TextStyle? getStyleSemiBold(context){
    return Theme.of(context).textTheme.bodyLarge;
  }
}