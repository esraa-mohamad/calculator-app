import 'package:calculator_app/presentation/resources/color_manager.dart';
import 'package:calculator_app/presentation/widgets/calculator_section.dart';
import 'package:calculator_app/presentation/widgets/custom_app_bar.dart';
import 'package:calculator_app/presentation/widgets/custom_drawer.dart';
import 'package:calculator_app/presentation/widgets/result_section.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../data/theme/change_theme.dart';
import '../../resources/values_manager.dart';

class CalculatesHomeView extends StatefulWidget {
  const CalculatesHomeView({super.key});

  @override
  State<CalculatesHomeView> createState() => _CalculatesHomeViewState();
}

class _CalculatesHomeViewState extends State<CalculatesHomeView> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(
      builder: (context , themeProvider , child){
        bool position = themeProvider.isDarkTheme;
        return Scaffold(
          key: _key,
          backgroundColor: position ? ColorManager.lightBabyBlue : ColorManager.darkBlue,
         drawer:const CustomDrawer(),
          body: SafeArea(
            child: CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: AppPadding.p12 , vertical: AppPadding.p12),
                      child: CustomAppBar(
                        onChanged: (bo){
                          Provider.of<ThemeProvider>(context, listen: false).toggleTheme();
                        },
                        positive: position,
                        onPressed: () {
                          _key.currentState!.openDrawer();
                        }
                        ,
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
        );
      },
    );
  }
}
