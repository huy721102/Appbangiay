import 'package:appbangiay/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class HTextTheme {
  HTextTheme._();
   
   ///custom light
  static TextTheme lightTextTheme = TextTheme(
    headlineLarge: const TextStyle().copyWith(fontSize: 32.0,fontWeight: FontWeight.bold,color: HColors.dark),
    headlineMedium: const TextStyle().copyWith(fontSize: 24.0,fontWeight: FontWeight.w600,color: HColors.dark),
    headlineSmall: const TextStyle().copyWith(fontSize: 18.0,fontWeight: FontWeight.w600,color: HColors.dark),

    titleLarge: const TextStyle().copyWith(fontSize: 16.0,fontWeight: FontWeight.w600,color: HColors.dark),
    titleMedium: const TextStyle().copyWith(fontSize: 16.0,fontWeight: FontWeight.w500,color: HColors.dark),
    titleSmall: const TextStyle().copyWith(fontSize: 16.0,fontWeight: FontWeight.w400,color: HColors.dark),

    bodyLarge: const TextStyle().copyWith(fontSize: 14.0,fontWeight: FontWeight.w500,color: HColors.dark),
    bodyMedium: const TextStyle().copyWith(fontSize: 14.0,fontWeight: FontWeight.normal,color: HColors.dark),
    bodySmall: const TextStyle().copyWith(fontSize: 14.0,fontWeight: FontWeight.w500,color: HColors.dark.withOpacity(0.5)),

    labelLarge: const TextStyle().copyWith(fontSize: 12.0,fontWeight: FontWeight.normal,color: HColors.dark),
    labelMedium: const TextStyle().copyWith(fontSize: 12.0,fontWeight: FontWeight.normal,color: HColors.dark.withOpacity(0.5)),
  );

  //custom dark  THEME
  static TextTheme darkTextTheme = TextTheme(
    headlineLarge: const TextStyle().copyWith(fontSize: 32.0,fontWeight: FontWeight.bold,color: HColors.white),
    headlineMedium: const TextStyle().copyWith(fontSize: 24.0,fontWeight: FontWeight.w600,color: HColors.white),
    headlineSmall: const TextStyle().copyWith(fontSize: 18.0,fontWeight: FontWeight.w600,color: HColors.white),

    titleLarge: const TextStyle().copyWith(fontSize: 16.0,fontWeight: FontWeight.w600,color: HColors.white),
    titleMedium: const TextStyle().copyWith(fontSize: 16.0,fontWeight: FontWeight.w500,color: HColors.white),
    titleSmall: const TextStyle().copyWith(fontSize: 16.0,fontWeight: FontWeight.w400,color: HColors.white),

    bodyLarge: const TextStyle().copyWith(fontSize: 14.0,fontWeight: FontWeight.w500,color: HColors.white),
    bodyMedium: const TextStyle().copyWith(fontSize: 14.0,fontWeight: FontWeight.normal,color: HColors.white),
    bodySmall: const TextStyle().copyWith(fontSize: 14.0,fontWeight: FontWeight.w500,color: HColors.white.withOpacity(0.5)),

    labelLarge: const TextStyle().copyWith(fontSize: 12.0,fontWeight: FontWeight.normal,color: HColors.white),
    labelMedium: const TextStyle().copyWith(fontSize: 12.0,fontWeight: FontWeight.normal,color: HColors.white.withOpacity(0.5)),
  );
}