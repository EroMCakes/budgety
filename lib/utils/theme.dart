import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

var kLightColorScheme = ColorScheme.fromSeed(
  seedColor: Color.fromARGB(235, 167, 124, 241),
);
var kDarkColorScheme = ColorScheme.fromSeed(
  brightness: Brightness.dark,
  seedColor: Color.fromARGB(255, 0, 63, 74),
);

var kLightTheme = ThemeData().copyWith(
  scaffoldBackgroundColor: kLightColorScheme.secondaryContainer,
  textTheme: TextTheme().copyWith(),
  appBarTheme: AppBarTheme().copyWith(
    backgroundColor: kLightColorScheme.onPrimaryContainer,
    foregroundColor: kLightColorScheme.secondaryContainer,
    centerTitle: true,
    elevation: 3,
    shadowColor: Colors.blueGrey,
    titleTextStyle: GoogleFonts.workSans(
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.w700,
      fontSize: 20,
    ),
    actionsIconTheme: IconThemeData().copyWith(
      color: kLightColorScheme.primaryContainer,
      size: 20,
    ),
  ),
);

var kDarkTheme = ThemeData.dark().copyWith(
  scaffoldBackgroundColor: kDarkColorScheme.secondaryContainer,
  // textTheme: TextTheme().copyWith(
  //     titleLarge: TextStyle(color: Color.fromARGB(255, 105, 107, 107))),
  appBarTheme: AppBarTheme().copyWith(
    backgroundColor: kDarkColorScheme.onPrimaryContainer,
    foregroundColor: kDarkColorScheme.secondaryContainer,
    centerTitle: true,
    elevation: 3,
    shadowColor: Colors.blueGrey,
    titleTextStyle: GoogleFonts.workSans(
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.w700,
      fontSize: 20,
    ),
    actionsIconTheme: IconThemeData().copyWith(
      color: kDarkColorScheme.primaryContainer,
      size: 20,
    ),
  ),
);
