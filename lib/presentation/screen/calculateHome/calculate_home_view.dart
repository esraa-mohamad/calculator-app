import 'package:calculator_app/presentation/resources/color_manager.dart';
import 'package:calculator_app/presentation/resources/style_manager.dart';
import 'package:calculator_app/presentation/widgets/circle_shape.dart';
import 'package:calculator_app/presentation/widgets/result_section.dart';
import 'package:calculator_app/presentation/widgets/square_shape.dart';
import 'package:flutter/material.dart';

import '../../resources/values_manager.dart';

class CalculatesHomeView extends StatelessWidget {
  const CalculatesHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.darkBlue,
      body: SafeArea(
          child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(AppSize.s18),
            gradient: const LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                ColorManager.lightBabyBlue,
                ColorManager.darkBlue,
                ColorManager.darkBlue,
                ColorManager.darkBlue,
                ColorManager.darkBlue,
                ColorManager.darkBlue,
                ColorManager.darkBlue,
                ColorManager.lightBabyBlue,
              ],
            )),
        child: Column(
          children: [
            const Expanded(child: ResultSection()),
            Expanded(
              flex: 3,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: AppPadding.p8),
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
                  mainAxisSpacing: 10,
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
                  ],
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
