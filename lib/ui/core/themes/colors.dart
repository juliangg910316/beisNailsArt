import 'package:flutter/material.dart';

abstract final class AppColors {
  static const main = Color(0xFF31572c);
  static const mainTwo = Color(0xFF132a13);
  static const mainIcon = Color(0xFF4f772d);
  static const mainMedium = Color(0xFF90a955);
  static const mainLight = Color(0xFFecf39e);
  static const secondary = Color(0xFFFFFFFF);
  static const secondaryText = Color(0xFF7C7D7E);
  static const backgroundScaffold = Color(0xFFEEEEEE);
  static const blue = Color(0xFF2B3445);
  static const purple = Color(0xFF5117AC);
  static const green = Color(0xFF20D0C4);
  static const red = Colors.red;
  static const dark = Color(0xFF03091E);
  static const grey = Color(0xFF212738);
  static const lightGrey = Color(0xFFBBBBBB);
  static const veryLightGrey = Color(0xFFF3F3F3);
  static const white = Color(0xFFFFFFFF);
  static const pink = Color(0xFFF5638B);

  static const black1 = Color(0xFF101010);
  static const white1 = Color(0xFFFFF7FA);
  static const grey1 = Color(0xFFF2F2F2);
  static const grey2 = Color(0xFF4D4D4D);
  static const grey3 = Color(0xFFA4A4A4);
  static const whiteTransparent =
      Color(0x4DFFFFFF); // Figma rgba(255, 255, 255, 0.3)
  static const blackTransparent = Color(0x4D000000);
  static const red1 = Color(0xFFE74C3C);

  static const lightColorScheme = ColorScheme(
    brightness: Brightness.light,
    primary: AppColors.main,
    onPrimary: AppColors.white1,
    secondary: AppColors.mainTwo,
    onSecondary: AppColors.white1,
    surface: Colors.white,
    onSurface: AppColors.black1,
    error: Colors.white,
    onError: Colors.red,
  );

  static const darkColorScheme = ColorScheme(
    brightness: Brightness.dark,
    primary: AppColors.mainLight,
    onPrimary: AppColors.black1,
    secondary: AppColors.mainMedium,
    onSecondary: AppColors.black1,
    surface: AppColors.black1,
    onSurface: Colors.white,
    error: Colors.black,
    onError: AppColors.red1,
  );
}
