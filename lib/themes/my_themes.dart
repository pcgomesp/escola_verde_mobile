import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyThemes {
  static Color colorScreen = const Color(0xFFECEBE1);
  static Color colorBars = const Color(0xFF74AB47);
  static Color colorTextTitle = const Color(0xFF408844);
  static Color colorTextBody = const Color(0xFF000000);
  static Color colorButton = const Color(0xFF94A737);
  static Color colorTextMainScreen = const Color(0xFF474F40);
  static TextStyle fontTextBody({Color textColor = Colors.black}) {
    return GoogleFonts.kreon(
      fontSize: 17,
      fontWeight: FontWeight.w300,
      color: textColor,
    );
  }

  static TextStyle fontTextTitle(
      {Color textColor = Colors.white, required double fontSize}) {
    return GoogleFonts.kreon(
      fontSize: fontSize,
      fontWeight: FontWeight.w700,
      color: textColor,
    );
  }

  static TextStyle fontCardMainScreen(
      {Color textColor = const Color(0xFF474F40)}) {
    return GoogleFonts.kreon(
      fontSize: 21,
      fontWeight: FontWeight.w400,
      color: textColor,
    );
  }

  static TextStyle fontSideMenu(
      {Color textColor = Colors.white, double fontSize = 24}) {
    return GoogleFonts.kreon(
      fontSize: fontSize,
      fontWeight: FontWeight.w600,
      color: textColor,
    );
  }
}
