import 'package:flutter/material.dart';

import '../resources/color_manager.dart';
import '../resources/style_manager.dart';
import '../resources/values_manager.dart';

class CircleShape extends StatelessWidget {
  const CircleShape({super.key, required this.text , this.circleColor =ColorManager.lightBlue });

  final String text;
  final Color circleColor;
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: circleColor,
      radius: AppSize.s40,
      child: TextButton(
        onPressed: (){},
        child: Text(
            text,
            style: StyleManager.getStyleRegular()
        ),
      ),
    );
  }
}
