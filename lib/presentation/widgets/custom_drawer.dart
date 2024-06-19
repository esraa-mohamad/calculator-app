
import 'package:calculator_app/data/provider/calculator_provider.dart';
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
    return Consumer2<ThemeProvider , CalculatorProvider>(
        builder: (context, themeProvider, calculatorProvider,child) {
      return Drawer(
        backgroundColor: themeProvider.isDarkTheme
            ? ColorManager.lightBabyBlue
            : ColorManager.darkBlue,
        child: Column(
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
                    onPressed: (){
                      Provider.of<CalculatorProvider>(context, listen: false).clearHistory();
                    },
                    icon: const Icon(
                      Icons.delete ,
                      size:AppSize.s40,
                      color: Colors.red,
                    ),
                  ),
                ),
              )
            ),
           Expanded(
             child:
           calculatorProvider.history.isNotEmpty ?
             ListView.builder(
               itemCount: calculatorProvider.history.length,
               itemBuilder: (context, index){
                 final historyItem = calculatorProvider.history[index];

                 return ListTile(
                   leading: Text(
                     '${index + 1})' ,
                     style: StyleManager.getStyleMedium(context)!.copyWith(
                         color: ColorManager.blue,
                         fontSize: FontSize.s20
                     ),
                   ),
                   trailing:   Text(
                     historyItem['result']! ,
                     style: StyleManager.getStyleMedium(context)!.copyWith(
                         fontSize: FontSize.s18
                     ),
                   ),
                   title: Text(
                       historyItem['expression']! ,
                       style: StyleManager.getStyleMedium(context)!.copyWith(
                           fontSize: FontSize.s20
                       ),
                   ),
                 );
               }
           ) :
               Container(),
           ),
          ],
        ),
      );
    });
  }
}

