import 'package:calculator_app/presentation/widgets/square_shape.dart';
import 'package:flutter/material.dart';

import '../resources/color_manager.dart';
import '../resources/fonts_manager.dart';
import '../resources/values_manager.dart';
import 'circle_shape.dart';

class CalculatorSection extends StatelessWidget {
  const CalculatorSection({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: const EdgeInsets.symmetric(horizontal: AppPadding.p8 , vertical: AppPadding.p18),
      decoration: const BoxDecoration(
        color: ColorManager.white,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(AppSize.s20),
          topLeft: Radius.circular(AppSize.s20),
        ),
      ),
      child: GridView.count(
        crossAxisCount: 4,
        padding: const EdgeInsets.all(20),
        crossAxisSpacing: 10,
        mainAxisSpacing: 15,
        children: const [
          CircleShape(
            text: 'DEL',
          ),
          CircleShape(
            text: 'AC',
          ),
          CircleShape(
            text: '%',
          ),
          CircleShape(
            text: '/',
          ),
          SquareShape(
            text: '7',
          ),
          SquareShape(
            text: '8',
          ),
          SquareShape(
            text: '9',
          ),
          CircleShape(
            text: 'X',
          ),
          SquareShape(
            text: '4',
          ),
          SquareShape(
            text: '5',
          ),
          SquareShape(
            text: '6',
          ),
          CircleShape(
            text: '-',
          ),
          SquareShape(
            text: '1',
          ),
          SquareShape(
            text: '2',
          ),
          SquareShape(
            text: '3',
          ),
          CircleShape(
            text: '+',
          ),
          SquareShape(
            text: '0',
          ),
          SquareShape(
            text: '.',
          ),
          SquareShape(
            text: 'ANS',
            fontSize: FontSize.s22,
            fontFamily: FontFamilyManager.textFont,
            colorText: ColorManager.white,
            colorShape: ColorManager.blue,
          ),
          CircleShape(
            text: '=',
            circleColor: ColorManager.grey,
          ),
        ],
      ),
    );
  }
}
