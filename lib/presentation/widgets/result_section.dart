import 'package:calculator_app/data/provider/calculator_provider.dart';
import 'package:calculator_app/presentation/resources/fonts_manager.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../resources/style_manager.dart';
import '../resources/values_manager.dart';

class ResultSection extends StatelessWidget {
  const ResultSection({super.key});
  @override
  Widget build(BuildContext context) {
    return Consumer<CalculatorProvider>(
        builder: (context , calculatorProvider , child){
          return Container(
            padding: const EdgeInsets.symmetric(
                horizontal: AppPadding.p18,
                vertical: AppPadding.p40
            ),
            child:  Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  calculatorProvider.result ,
                  style: StyleManager.getStyleMedium(context),
                ),
                const SizedBox(
                  height: AppSize.s25,
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Text(
                    calculatorProvider.display ,
                    style: StyleManager.getStyleMedium(context),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Text(
                    calculatorProvider.error ,
                    style: StyleManager.getStyleMedium(context)?.copyWith(
                      color: Colors.red ,
                      fontSize: FontSize.s18
                    ),
                  ),
                ),

              ],
            ),
          );
        }
    );
  }
}
