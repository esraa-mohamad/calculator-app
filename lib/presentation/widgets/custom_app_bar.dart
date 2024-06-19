import 'dart:math';

import 'package:animated_toggle_switch/animated_toggle_switch.dart';
import 'package:calculator_app/presentation/resources/style_manager.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

import '../../data/theme/change_theme.dart';
import '../resources/color_manager.dart';
import '../resources/values_manager.dart';

class CustomAppBar extends StatefulWidget {
  const CustomAppBar({super.key, this.onChanged, this.positive = false,required this.onPressed});

  final Function(bool)? onChanged;

  final bool positive;

  final void Function() onPressed;
  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  int value = 0;
  int? nullableValue;
  bool loading = false;
  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(
      builder: ( context, themeProvider , child) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: widget.onPressed,
              icon:  Icon(
                FontAwesomeIcons.clockRotateLeft,
                color: themeProvider.isDarkTheme ? ColorManager.darkBlue : ColorManager.lightBabyBlue,
                size: AppSize.s30,
              ),
            ),
            AnimatedToggleSwitch<bool>.dual(
              current: widget.positive,
              first: false,
              second: true,
              spacing: AppSize.s30,
              animationDuration: const Duration(milliseconds: 600),
              style: const ToggleStyle(
                borderColor: Colors.transparent,
                indicatorColor: ColorManager.white,
              ),
              customStyleBuilder: (context, local, global) {
                if (global.position <= 0.0) {
                  return const ToggleStyle(
                      backgroundColor: ColorManager.lightBabyBlue);
                }
                return ToggleStyle(
                    backgroundGradient: LinearGradient(
                      colors: const [ColorManager.darkBlue, ColorManager.lightBabyBlue],
                      stops: [
                        global.position - (1 - 2 * max(0, global.position - 0.5)) * 0.7,
                        global.position + max(0, 2 * (global.position - 0.5)) * 0.7,
                      ],
                    ));
              },
              borderWidth: 6.0,
              height: 60.0,
              loadingIconBuilder: (context, global) => CupertinoActivityIndicator(
                  color: Color.lerp(ColorManager.darkBlue,
                      ColorManager.lightBabyBlue, global.position)),
              onChanged: widget.onChanged,
              iconBuilder: (value) => value
                  ? const Icon(FontAwesomeIcons.moon,
                  color: ColorManager.blue, size: AppSize.s30)
                  : const Icon(FontAwesomeIcons.sun,
                  color: ColorManager.darkBlue, size: AppSize.s30),
              textBuilder: (value) => value
                  ? Center(
                child: Text(
                  'Dark',
                  style: StyleManager.getStyleLight(context),
                ),
              )
                  : Center(
                child: Text(
                  'Light',
                  style: StyleManager.getStyleLight(context),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
