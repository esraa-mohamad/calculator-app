import 'package:calculator_app/presentation/resources/color_manager.dart';
import 'package:calculator_app/presentation/resources/fonts_manager.dart';
import 'package:flutter/material.dart';

class StyleManager {

  TextStyle getStyleRegular(){
    return const TextStyle(
      color: ColorManager.babyBlue,
      fontWeight: FontWeightManager.regular,
      fontSize: FontSize.s16 ,
      fontFamily: FontFamilyManager.textFont,
    );
  }

  TextStyle getStyleMedium(){
    return const TextStyle(
      color: ColorManager.white,
      fontWeight: FontWeightManager.medium,
      fontSize: FontSize.s18 ,
      fontFamily: FontFamilyManager.textFont,
    );
  }

  TextStyle getStyleSemiBold(){
    return const TextStyle(
      color: ColorManager.babyBlue,
      fontWeight: FontWeightManager.semiBold,
      fontSize: FontSize.s16 ,
      fontFamily: FontFamilyManager.numberFont,
    );
  }
}