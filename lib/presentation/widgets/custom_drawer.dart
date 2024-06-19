import 'package:calculator_app/data/theme/change_theme.dart';
import 'package:calculator_app/presentation/resources/fonts_manager.dart';
import 'package:calculator_app/presentation/resources/values_manager.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../resources/color_manager.dart';
import '../resources/style_manager.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(builder: (context, themeProvider, child) {
      return Drawer(
        backgroundColor: themeProvider.isDarkTheme
            ? ColorManager.lightBabyBlue
            : ColorManager.darkBlue,
        child: ListView(
          children:  [
            DrawerHeader(
              decoration: BoxDecoration(
                color: themeProvider.isDarkTheme
              ? ColorManager.darkBlue
                  : ColorManager.lightBabyBlue,
              ),
              child:Center(
                child: ListTile(
                  leading: Icon(
                    Icons.history_toggle_off ,
                    size: AppSize.s40,
                    color: themeProvider.isDarkTheme
                  ? ColorManager.lightBabyBlue
                      : ColorManager.darkBlue,
                  ),
                  title: Text(
                    'Equation History' ,
                    style: StyleManager.getStyleRegular(context)!.copyWith(
                      color: themeProvider.isDarkTheme
                          ? ColorManager.lightBabyBlue
                          : ColorManager.darkBlue,
                      fontSize: FontSize.s22
                    ),
                  ),
                  trailing: IconButton(
                    onPressed: (){},
                    icon: const Icon(
                      Icons.delete ,
                      size:AppSize.s40,
                      color: Colors.red,
                    ),
                  ),
                ),
              )
            ),
            ListTile(
              leading: Text(
                '1)' ,
                style: StyleManager.getStyleMedium(context)!.copyWith(
                  color: ColorManager.blue
                ),
              ),
              trailing:   Text(
                '30' ,
                style: StyleManager.getStyleMedium(context)!.copyWith(
                    fontSize: FontSize.s25
                ),
              ),
              title: Text(
                '5 X 6' ,
                style: StyleManager.getStyleMedium(context)
              ),
            ),
          ],
        ),
      );
    });
  }
}
