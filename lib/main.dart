import 'package:calculator_app/presentation/resources/routes_manager.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'data/theme/change_theme.dart';
import 'presentation/resources/change_theme_data.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => ThemeProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(
        builder: (context , themeProvider , child){
          return MaterialApp.router(
            theme: themeProvider.isDarkTheme ? lightTheme : darkTheme,
            routerConfig: RoutesManager.router,
            debugShowCheckedModeBanner: false,
          );
        },
    );
  }
}
