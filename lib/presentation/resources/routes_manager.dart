import 'package:calculator_app/presentation/screen/calculateHome/calculate_home_view.dart';
import 'package:calculator_app/presentation/screen/splash/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class RoutesManager {

  static const String calculateHomeRoute='/calculatorHome';
  static final GoRouter router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        builder: ( context,  state) {
          return const SplashView();
        },
      ),
      GoRoute(
        path: calculateHomeRoute,
        builder: ( context,  state) {
          return const CalculatesHomeView();
        },
      ),
    ],
  );
}