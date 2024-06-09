import 'package:flutter/material.dart';

import 'color_manager.dart';
import 'fonts_manager.dart';

final ThemeData darkTheme = ThemeData(
  primaryColor: ColorManager.darkBlue,
  brightness: Brightness.dark,
  textTheme: const TextTheme(
    displaySmall:  TextStyle(
      color: ColorManager.darkBlue,
      fontWeight: FontWeightManager.light,
      fontSize: FontSize.s16 ,
      fontFamily: FontFamilyManager.textFont,
    ),
    displayMedium: TextStyle(
      color: ColorManager.white,
      fontWeight: FontWeightManager.semiBold,
      fontSize: FontSize.s25 ,
      fontFamily: FontFamilyManager.textFont,
    ),
    displayLarge: TextStyle(
      color: ColorManager.white,
      fontWeight: FontWeightManager.medium,
      fontSize: FontSize.s30,
      fontFamily: FontFamilyManager.textFont,
    ),
    bodyLarge:   TextStyle(
      color: ColorManager.lightBabyBlue,
      fontWeight: FontWeightManager.semiBold,
      fontSize: FontSize.s30 ,
      fontFamily: FontFamilyManager.numberFont,
    )
  ),
);

final ThemeData lightTheme = ThemeData(
  primaryColor: ColorManager.lightBabyBlue,
  brightness: Brightness.light,
  textTheme: const TextTheme(
      displaySmall:  TextStyle(
        color: ColorManager.lightBabyBlue,
        fontWeight: FontWeightManager.light,
        fontSize: FontSize.s16 ,
        fontFamily: FontFamilyManager.textFont,
      ),
    displayMedium: TextStyle(
      color: ColorManager.white,
      fontWeight: FontWeightManager.semiBold,
      fontSize: FontSize.s25 ,
      fontFamily: FontFamilyManager.textFont,
    ),
    displayLarge: TextStyle(
      color: ColorManager.darkBlue,
      fontWeight: FontWeightManager.medium,
      fontSize: FontSize.s30,
      fontFamily: FontFamilyManager.textFont,
    ),
      bodyLarge:   TextStyle(
        color: ColorManager.blue,
        fontWeight: FontWeightManager.semiBold,
        fontSize: FontSize.s30 ,
        fontFamily: FontFamilyManager.numberFont,
      )
  ),

);