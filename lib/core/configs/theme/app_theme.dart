import 'package:flutter/material.dart';
import 'package:musicapp_trav/core/configs/theme/app_colors.dart';

class AppTheme {

  static final lightTheme = ThemeData(
    primaryColor: AppColors.primary,
    scaffoldBackgroundColor: AppColors.background,
    brightness: Brightness.light,
    fontFamily: 'Satoshi',
    sliderTheme: SliderThemeData(
      overlayShape: SliderComponentShape.noOverlay
    ),
    inputDecorationTheme: InputDecorationTheme(   
      filled: true,
      fillColor: AppColors.textFieldBackground,
      contentPadding: const EdgeInsets.all(30),
      hintStyle: const TextStyle(
        color: AppColors.secondaryText,
        fontWeight: FontWeight.w500,
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30),
        borderSide: const BorderSide(
          color: AppColors.primaryText,
          width: 0.4
        )
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30),
        borderSide: const BorderSide(
          color: AppColors.primaryText,
          width: 0.4
        )
      )
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primary,
        elevation: 0,
        textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30)
        )
      )
    )
  );

  static final darkTheme = ThemeData(
    primaryColor: AppColors.primary,
    scaffoldBackgroundColor: AppColors.background,
    brightness: Brightness.dark,
    fontFamily: 'Satoshi',
    sliderTheme: SliderThemeData(
      overlayShape: SliderComponentShape.noOverlay,
      activeTrackColor: AppColors.secondaryText,
      inactiveTrackColor: AppColors.secondaryText.withOpacity(0.3),
      thumbColor: AppColors.secondaryText
    ),
    inputDecorationTheme: InputDecorationTheme(   
      filled: true,
      fillColor: AppColors.textFieldBackground,
      hintStyle: const TextStyle(
        color: AppColors.secondaryText,
        fontWeight: FontWeight.w500,
      ),
      contentPadding: const EdgeInsets.all(30),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30),
        borderSide: const BorderSide(
          color: AppColors.primaryText,
          width: 0.4
        )
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30),
        borderSide: const BorderSide(
          color: AppColors.primaryText,
          width: 0.4
        )
      )
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primary,
        elevation: 0,
        textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30)
        )
      )
    )
  );
}
