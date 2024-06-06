import 'package:calculator_app/presentation/resources/color_manager.dart';
import 'package:calculator_app/presentation/widgets/calculator_section.dart';
import 'package:calculator_app/presentation/widgets/custom_app_bar.dart';
import 'package:calculator_app/presentation/widgets/result_section.dart';
import 'package:flutter/material.dart';

import '../../resources/values_manager.dart';

class CalculatesHomeView extends StatefulWidget {
  const CalculatesHomeView({super.key});

  @override
  State<CalculatesHomeView> createState() => _CalculatesHomeViewState();
}

class _CalculatesHomeViewState extends State<CalculatesHomeView> {
   bool position = false ;

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
            ),
          ),
          child:   CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: AppPadding.p12 , vertical: AppPadding.p12),
                  child: CustomAppBar(
                    onChanged: (bo){
                      setState(() {
                        position = bo;
                      });
                    },
                    positive: position,
                  )
                ),
              ),
              const SliverToBoxAdapter(
                child: ResultSection(),
              ),
              const SliverFillRemaining(
                child: CalculatorSection(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
