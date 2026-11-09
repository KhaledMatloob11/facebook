import 'package:facebook/core/app_routes.dart';
import 'package:facebook/home_screen/home_screen.dart';
import 'package:facebook/login_screen/login_screen.dart';
import 'package:facebook/splash/splash_screen.dart';
import 'package:flutter/material.dart';

import 'core/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.splashRoute,
      theme: AppTheme.appTheme,
      themeMode: ThemeMode.light,
      routes: {
        AppRoutes.splashRoute: (context) => const SplashScreen(),
        AppRoutes.loginRoute: (context) => const LoginScreen(),
        AppRoutes.homeRoute: (context) => const HomeScreen(),
      },
    );
  }
}