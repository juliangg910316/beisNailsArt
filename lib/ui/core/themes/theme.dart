import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../ui/tag_chip.dart';
import 'colors.dart';

abstract final class AppTheme {
  static const _textTheme = TextTheme(
    headlineLarge: TextStyle(
      fontSize: 32,
      fontWeight: FontWeight.w500,
    ),
    headlineSmall: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w400,
    ),
    titleMedium: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w500,
      color: AppColors.white,
    ),
    bodyLarge: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w400,
    ),
    bodyMedium: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w400,
    ),
    bodySmall: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: AppColors.grey3,
    ),
    labelSmall: TextStyle(
      fontSize: 10,
      fontWeight: FontWeight.w500,
      color: AppColors.grey3,
    ),
    labelLarge: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w400,
      color: AppColors.grey3,
    ),
  );

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    colorScheme: AppColors.lightColorScheme,
    textTheme: _textTheme,
    appBarTheme: _appBarTheme,
    inputDecorationTheme: _inputDecorationTheme,
    extensions: [
      TagChipTheme(
        chipColor: AppColors.whiteTransparent,
        onChipColor: Colors.white,
      ),
    ],
  );

  static final AppBarTheme _appBarTheme = AppBarTheme(
    backgroundColor: AppColors.main,
    titleTextStyle: GoogleFonts.poppins(
      fontSize: 20.0,
      fontWeight: FontWeight.bold,
      color: AppColors.white,
    ),
    centerTitle: true,
    iconTheme: const IconThemeData(color: AppColors.white),
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    colorScheme: AppColors.darkColorScheme,
    textTheme: _textTheme,
    inputDecorationTheme: _inputDecorationTheme,
    extensions: [
      TagChipTheme(
        chipColor: AppColors.blackTransparent,
        onChipColor: Colors.white,
      ),
    ],
  );

  static const _inputDecorationTheme = InputDecorationTheme(
    hintStyle: TextStyle(
      // grey3 works for both light and dark themes
      color: AppColors.grey3,
      fontSize: 18.0,
      fontWeight: FontWeight.w400,
    ),
  );
}
