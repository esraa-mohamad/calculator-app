import 'dart:async';

import 'package:calculator_app/presentation/resources/assets_manager.dart';
import 'package:calculator_app/presentation/resources/color_manager.dart';
import 'package:calculator_app/presentation/resources/routes_manager.dart';
import 'package:calculator_app/presentation/resources/values_manager.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {

  Timer? _timer;

  _startDelay() {
    _timer = Timer(
      const Duration(seconds: 5) ,
      _goNext
    );
  }

  _goNext(){
    GoRouter.of(context).push(RoutesManager.calculateHomeRoute);
  }

  @override
  void initState() {
    super.initState();
    _startDelay();
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: ColorManager.darkBlue,
      body: Center(
        child:  Lottie.asset(
          width: AppSize.s150,
          height: AppSize.s150,
          LottieManager.calculator,
          repeat: true,
          animate: true,
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _timer?.cancel();
  }
}
