import 'package:flutter/material.dart';

import '../resources/color_manager.dart';
import '../resources/style_manager.dart';
import '../resources/values_manager.dart';

class SquareShape extends StatelessWidget {
  const SquareShape({super.key, required this.text});

  final String text ;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppSize.s25),
          color: ColorManager.darkBlue
      ),
      child: TextButton(
        onPressed: (){},
        child: Text(
          text,
          style: StyleManager.getStyleSemiBold().copyWith(
              color: ColorManager.babyBlue
          ),
        ),
      ),
    );
  }
}
