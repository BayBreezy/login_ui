import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

var kPrimaryColor = Colors.deepPurple;
var kSecondaryColor = Colors.amber;
var kPrimaryDarkColor = Colors.teal;
var kSecondaryDarkColor = Colors.pink.shade300;
double kPadding = 20.0;

var lightTheme = ThemeData(
  brightness: Brightness.light,
  scaffoldBackgroundColor: Colors.white,
  primarySwatch: kPrimaryColor,
  primaryColor: kPrimaryColor,
  accentColor: kSecondaryColor,
  colorScheme: const ColorScheme.light()
      .copyWith(secondary: kSecondaryColor, brightness: Brightness.light),
  textTheme: GoogleFonts.quicksandTextTheme(),
);

var darkTheme = ThemeData(
  brightness: Brightness.dark,
  scaffoldBackgroundColor: Color.fromARGB(255, 24, 24, 24),
  primarySwatch: kPrimaryDarkColor,
  primaryColor: kPrimaryDarkColor,
  accentColor: kSecondaryDarkColor,
  colorScheme: const ColorScheme.light().copyWith(
    brightness: Brightness.dark,
    secondary: kSecondaryDarkColor,
  ),
  textTheme: GoogleFonts.quicksandTextTheme(
    ThemeData(brightness: Brightness.dark).textTheme,
  ),
);
