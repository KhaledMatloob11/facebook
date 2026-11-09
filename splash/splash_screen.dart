import 'package:facebook/core/app_assets.dart';
import 'package:facebook/core/app_routes.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 4), () {
      if(mounted){
        Navigator.pushReplacementNamed(context, AppRoutes.loginRoute);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Image.asset(AppAssets.splashImage, fit: BoxFit.cover, width:
        double.infinity, height: double.infinity,),
    );
  }
}