import 'package:facebook/login_screen/widgets/login_form.dart';
import 'package:flutter/material.dart';

import '../core/app_assets.dart';
import '../core/app_theme.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding:  EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(height: size.height * 0.1),
                Image.asset(
                  AppAssets.logo,
                  width: size.width * 0.5,
                  height: size.height * 0.10,
                ),
                SizedBox(height: size.height * 0.05),
                 LoginForm(),
                TextButton(
                  onPressed: () {
                    // Handle forgot password logic here
                  },
                  child:  Text('Forgot Password?'),
                ),
                SizedBox(height: size.height * 0.05),
                ElevatedButton(
                  onPressed: () {
                    // Handle Create account logic here
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppTheme.white,
                    textStyle: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      color: AppTheme.primary,
                      fontSize: 16.0,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                      side: const BorderSide(color: AppTheme.primary),
                    ),
                  ),
                  child:  Text('Create Account'),
                ),
                SizedBox(height: size.height * 0.05),
                Image.asset(
                  AppAssets.metaImage,
                  height: size.height * 0.15,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}