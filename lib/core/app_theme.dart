import 'package:flutter/material.dart';

abstract class AppTheme {
  static const Color primary = Color(0xFF1877F2);
  static const Color black = Color(0xFF242527);
  static const Color grey = Color(0xFF898F9C);
  static const Color lightGrey = Color(0xFFD6DFF1);
  static const Color white = Color(0xFFFFFFFF);
  static const Color red = Color(0xFFE24040);
  static const Color green = Color(0xFF0DE571);

  static ThemeData appTheme = ThemeData(
    primaryColor: primary,
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(seedColor: primary, brightness: Brightness.light),
    inputDecorationTheme: InputDecorationTheme(
      fillColor: lightGrey,
      filled: true,
      focusedBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: black),
        borderRadius: _borderRadius16,
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: _borderRadius16,
        borderSide: const BorderSide(color: grey),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: _borderRadius16,
        borderSide: const BorderSide(color: red),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: _borderRadius16,
        borderSide: const BorderSide(color: red),
      ),
      hintStyle: _textStyle.copyWith(color: grey),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        textStyle: _textStyle.copyWith(color: white, fontSize: 16.0),
        backgroundColor: primary,
        shape: RoundedRectangleBorder(
            borderRadius: _borderRadius16),
        padding: const EdgeInsets.symmetric(vertical: 14),
      ),
    ),
    textTheme: const TextTheme(
      bodyMedium: _textStyle,
    ),
    tabBarTheme: const TabBarThemeData(
      indicatorSize: TabBarIndicatorSize.tab,
      indicatorColor: AppTheme.primary,
      dividerHeight: 1,
      labelColor: AppTheme.primary,
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        textStyle: _textStyle.copyWith(color: grey, fontSize: 12.0)),
    ),

    dividerTheme: const DividerThemeData(color: AppTheme.grey, thickness: 1),
  );

  static const TextStyle _textStyle = TextStyle(
    fontSize: 16,
    fontFamily: 'inter',
    color: white,
  );

  static final  _borderRadius16 = BorderRadius.circular(16);
}