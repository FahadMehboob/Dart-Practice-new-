import 'package:asset_theme/app_colors.dart';
import 'package:flutter/material.dart';

abstract class AppTheme {
  static ThemeData get light => ThemeData().copyWith(
      primaryColor: Colors.amber,
      textTheme: const TextTheme(
        headlineLarge: TextStyle(fontSize: 30, color: Colors.grey),
      ));

  static get lightv2 => light.copyWith(
        textTheme: light.textTheme.copyWith(
          headlineLarge: light.textTheme.headlineLarge!.copyWith(
            color: Colors.pink,
          ),
        ),
      );

  static ThemeData get dark => ThemeData().copyWith(
        scaffoldBackgroundColor: Colors.red.withOpacity(0.5),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            backgroundColor: WidgetStatePropertyAll(AppColors.buttonColor),
          ),
        ),
      );
}
