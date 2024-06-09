import 'package:calculator_app/data/theme/change_theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../resources/color_manager.dart';
import '../resources/style_manager.dart';
import '../resources/values_manager.dart';

class SquareShape extends StatelessWidget {
  const SquareShape(
      {super.key,
      required this.text,
      this.fontSize,
      this.fontFamily,
      this.colorText,
      this.colorShape,
      this.onPressed});

  final String text;

  final double? fontSize;

  final String? fontFamily;
  final Color? colorText;
  final Color? colorShape;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(builder: (context, themeProvider, child) {
      final color = colorShape ??
          (themeProvider.isDarkTheme
              ? ColorManager.lightBabyBlue
              : ColorManager.darkBlue);
      return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppSize.s25),
          color: color,
        ),
        child: TextButton(
          onPressed: onPressed,
          child: Text(
            text,
            style: StyleManager.getStyleSemiBold(context)?.copyWith(
              color: colorText,
              fontSize: fontSize,
              fontFamily: fontFamily,
            ),
          ),
        ),
      );
    });
  }
}
