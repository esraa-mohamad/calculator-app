import 'package:calculator_app/presentation/resources/color_manager.dart';
import 'package:calculator_app/presentation/widgets/calculator_section.dart';
import 'package:calculator_app/presentation/widgets/result_section.dart';
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
        child: const CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: ResultSection(),
            ),
            SliverFillRemaining(
              child: CalculatorSection(),
            ),
          ],
        ),
      )),
    );
  }
}
