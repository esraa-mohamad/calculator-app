import 'package:calculator_app/presentation/resources/color_manager.dart';
import 'package:calculator_app/presentation/resources/fonts_manager.dart';
import 'package:flutter/material.dart';

abstract class StyleManager {

  static TextStyle getStyleRegular(){
    return const TextStyle(
      color: ColorManager.white,
      fontWeight: FontWeightManager.semiBold,
      fontSize: FontSize.s25 ,
      fontFamily: FontFamilyManager.textFont,
    );
  }

  static TextStyle getStyleMedium(){
    return const TextStyle(
      color: ColorManager.white,
      fontWeight: FontWeightManager.medium,
      fontSize: FontSize.s30,
      fontFamily: FontFamilyManager.textFont,
    );
  }

  static TextStyle getStyleSemiBold(){
    return const TextStyle(
      color: ColorManager.babyBlue,
      fontWeight: FontWeightManager.semiBold,
      fontSize: FontSize.s30 ,
      fontFamily: FontFamilyManager.numberFont,
    );
  }
}