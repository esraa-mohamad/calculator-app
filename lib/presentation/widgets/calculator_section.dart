import 'package:calculator_app/data/provider/calculator_provider.dart';
import 'package:calculator_app/data/theme/change_theme.dart';
import 'package:calculator_app/presentation/widgets/square_shape.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../resources/color_manager.dart';
import '../resources/fonts_manager.dart';
import '../resources/values_manager.dart';
import 'circle_shape.dart';

class CalculatorSection extends StatelessWidget {
  const CalculatorSection({super.key});

  @override
  Widget build(BuildContext context) {
    return  Consumer2<ThemeProvider, CalculatorProvider>(
        builder: (context , themeProvider , calculatorProvider, child){
          return Container(
            padding: const EdgeInsets.symmetric(horizontal: AppPadding.p8 , vertical: AppPadding.p18),
            decoration:  BoxDecoration(
              color: themeProvider.isDarkTheme ? ColorManager.secondBlue : ColorManager.white,
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(AppSize.s20),
                topLeft: Radius.circular(AppSize.s20),
              ),
            ),
            child: GridView.count(
              crossAxisCount: 4,
              padding: const EdgeInsets.all(20),
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              children:  [
                CircleShape(
                  text: 'DEL',
                  fontSize: FontSize.s20,
                  onPressed: ()=> calculatorProvider.buttonPressed('DEL'),
                ),
                CircleShape(
                  text: 'AC',
                  onPressed: ()=> calculatorProvider.buttonPressed('AC'),
                ),
                CircleShape(
                  text: '%',
                  onPressed: ()=> calculatorProvider.buttonPressed('%'),
                ),
                CircleShape(
                  text: '/',
                  onPressed: ()=> calculatorProvider.buttonPressed('/'),
                ),
                SquareShape(
                  text: '7',
                  onPressed: ()=> calculatorProvider.buttonPressed('7'),
                ),
                SquareShape(
                  text: '8',
                  onPressed: ()=> calculatorProvider.buttonPressed('8'),
                ),
                SquareShape(
                  text: '9',
                  onPressed: ()=> calculatorProvider.buttonPressed('9'),
                ),
                CircleShape(
                  text: 'X',
                  onPressed: ()=> calculatorProvider.buttonPressed('X'),
                ),
                SquareShape(
                  text: '4',
                  onPressed: ()=> calculatorProvider.buttonPressed('4'),
                ),
                SquareShape(
                  text: '5',
                  onPressed: ()=> calculatorProvider.buttonPressed('5'),
                ),
                SquareShape(
                  text: '6',
                  onPressed: ()=> calculatorProvider.buttonPressed('6'),
                ),
                CircleShape(
                  text: '-',
                  onPressed: ()=> calculatorProvider.buttonPressed('-'),
                ),
                SquareShape(
                  text: '1',
                  onPressed: ()=> calculatorProvider.buttonPressed('1'),
                ),
                SquareShape(
                  text: '2',
                  onPressed: ()=> calculatorProvider.buttonPressed('2'),
                ),
                SquareShape(
                  text: '3',
                  onPressed: ()=> calculatorProvider.buttonPressed('3'),
                ),
                CircleShape(
                  text: '+',
                  onPressed: ()=> calculatorProvider.buttonPressed('+'),
                ),
                SquareShape(
                  text: '0',
                  onPressed: ()=> calculatorProvider.buttonPressed('0'),
                ),
                SquareShape(
                  text: '.',
                  onPressed: ()=> calculatorProvider.buttonPressed('.'),
                ),
                SquareShape(
                  text: 'ANS',
                  fontSize: FontSize.s20,
                  fontFamily: FontFamilyManager.textFont,
                  colorText: ColorManager.white,
                  colorShape: ColorManager.blue,
                  onPressed: ()=> calculatorProvider.buttonPressed('ANS'),
                ),
                CircleShape(
                  text: '=',
                  circleColor: ColorManager.grey,
                  textColor: ColorManager.equalColor,
                  fontSize: FontSize.s40,
                  onPressed: ()=> calculatorProvider.buttonPressed('='),
                ),
              ],
            ),
          );
        }
    );
  }
}
