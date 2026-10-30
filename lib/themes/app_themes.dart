import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppThemes {

  static Color primary = Colors.greenAccent;

  static ThemeData lightTheme = ThemeData(
    colorScheme: ColorScheme.fromSeed(
      seedColor: primary,
      brightness: Brightness.light
    ),
    appBarTheme: AppBarThemeData(
      centerTitle: true,
      backgroundColor: primary
    ),
    textTheme: GoogleFonts.outfitTextTheme()

  );

  static ThemeData darkTheme = ThemeData(
    colorScheme: ColorScheme.fromSeed(
      seedColor: primary,
      brightness: Brightness.dark
    ),
    appBarTheme: AppBarThemeData(
      centerTitle: true,
      backgroundColor: primary,
      foregroundColor: Colors.black
    ),
    textTheme: GoogleFonts.outfitTextTheme()
  );

}