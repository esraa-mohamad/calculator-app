import 'package:flutter/material.dart';

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
      this.colorShape =ColorManager.darkBlue});

  final String text;

  final double? fontSize;

  final String? fontFamily;
  final Color? colorText;
  final Color colorShape;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppSize.s25), color: colorShape),
      child: TextButton(
        onPressed: () {},
        child: Text(
          text,
          style: StyleManager.getStyleSemiBold().copyWith(
            color: colorText,
            fontSize: fontSize,
            fontFamily: fontFamily,
          ),
        ),
      ),
    );
  }
}
