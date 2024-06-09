import 'package:calculator_app/data/theme/change_theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../resources/color_manager.dart';
import '../resources/style_manager.dart';
import '../resources/values_manager.dart';

class CircleShape extends StatelessWidget {
  const CircleShape(
      {super.key,
      required this.text,
      this.circleColor,
      this.textColor,
      this.fontSize,
      this.onPressed});

  final String text;
  final Color? circleColor;
  final Color? textColor;
  final double? fontSize;

  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(builder: (context, themeProvider, child) {
      final color = circleColor ??
          (themeProvider.isDarkTheme
              ? ColorManager.lightBlue
              : ColorManager.lightDarkBlue);
      return CircleAvatar(
        backgroundColor: color,
        radius: AppSize.s40,
        child: TextButton(
          onPressed: onPressed,
          child: Text(
            text,
            style: StyleManager.getStyleRegular(context)!.copyWith(
              color: textColor,
              fontSize: fontSize,
            ),
          ),
        ),
      );
    });
  }
}
