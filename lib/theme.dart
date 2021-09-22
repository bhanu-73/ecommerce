import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce/values/colors.dart';

const MaterialColor white = const MaterialColor(0xFFFFFFFF, const <int, Color>{
  50: const Color(0xFFFFFFFF),
  100: const Color(0xFFFFFFFF),
  200: const Color(0xFFFFFFFF),
  300: const Color(0xFFFFFFFF),
  400: const Color(0xFFFFFFFF),
  500: const Color(0xFFFFFFFF),
  600: const Color(0xFFFFFFFF),
  700: const Color(0xFFFFFFFF),
  800: const Color(0xFFFFFFFF),
  900: const Color(0xFFFFFFFF),
});

ThemeData _buildLightTheme(BuildContext context) {
  const Color primaryColor = Colors.blue;
  const Color secondaryColor = Colors.red;
  const Color accentColor = Colors.blueAccent;

  final ColorScheme colorScheme = const ColorScheme.light()
      .copyWith(primary: primaryColor, secondary: secondaryColor);

  final ThemeData base = ThemeData(
      brightness: Brightness.light,
      primaryColorBrightness: Brightness.light,
      accentColorBrightness: Brightness.light,
      colorScheme: colorScheme,
      primaryColor: primaryColor,
      buttonColor: AppColors.secondaryColor);
  return base;
}

ThemeData _buildDarkTheme(BuildContext context) {
  const Color primaryColor = Colors.blue;
  const Color secondaryColor = Colors.red;
  const Color accentColor = Colors.blueAccent;

  final ColorScheme colorScheme = const ColorScheme.light()
      .copyWith(primary: primaryColor, secondary: secondaryColor);

  final ThemeData base = ThemeData(
      brightness: Brightness.light,
      primaryColorBrightness: Brightness.light,
      accentColorBrightness: Brightness.light,
      colorScheme: colorScheme,
      primaryColor: primaryColor,
      buttonColor: AppColors.secondaryColor);
  return base;
}

TextTheme _buildTextTheme(BuildContext context) {
  var textTheme = Theme.of(context).textTheme;

  return GoogleFonts.josefinSansTextTheme(textTheme).copyWith(
    headline1: GoogleFonts.josefinSans(
        fontSize: 36,
        color: AppColors.primaryColor,
        fontWeight: FontWeight.bold,
        fontStyle: FontStyle.normal),
    subtitle1: GoogleFonts.josefinSans(
        fontSize: 32,
        color: AppColors.primaryColor,
        fontWeight: FontWeight.w500,
        fontStyle: FontStyle.italic),
    headline6: GoogleFonts.josefinSans(
        fontSize: 18,
        color: AppColors.primaryColor,
        fontStyle: FontStyle.normal),
    button: GoogleFonts.josefinSans(
        fontSize: 18,
        color: AppColors.primaryColor,
        fontWeight: FontWeight.bold,
        fontStyle: FontStyle.normal),
  );
}
