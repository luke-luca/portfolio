import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppColors {
  /// Colors
  static const Color darkGreenColor = Color(0xFF0D2F3F);
  static const Color greenColor = Color(0xFF286F6C);
  static const Color whiteColor = Color(0xFFFFFFFF);
  static const Color shadedColor = Color(0xFFF8F7F1);
  static const Color lightGrayColor = Color.fromARGB(255, 80, 85, 87);
  static const Color yellowColor = Color(0xFFF1C249);
  static const Color orangeColor = Color(0xFFF26440);

  /// Fonts
  static TextStyle nunitoFont = GoogleFonts.nunito();
  static TextStyle robotoSlabFont = GoogleFonts.openSans();

  /// Headings
  static TextStyle h1 = nunitoFont.copyWith(
    fontSize: 64,
    fontWeight: FontWeight.w800,
    color: darkGreenColor,
  );

  static TextStyle h2 = robotoSlabFont.copyWith(
    fontSize: 36,
    fontWeight: FontWeight.normal,
    color: darkGreenColor,
  );

  static TextStyle h3 = robotoSlabFont.copyWith(
    fontSize: 22,
    fontWeight: FontWeight.w400,
    color: darkGreenColor,
  );
  //Paragraphs
  static TextStyle pDark = robotoSlabFont.copyWith(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: darkGreenColor,
  );

  static TextStyle pLight = robotoSlabFont.copyWith(
    fontSize: 16,
    fontWeight: FontWeight.normal,
    color: lightGrayColor,
  );

  static TextStyle pAccent = robotoSlabFont.copyWith(
    fontSize: 18,
    fontWeight: FontWeight.normal,
    color: orangeColor,
  );

  static TextStyle menuItem = nunitoFont.copyWith(
    fontSize: 18,
    fontWeight: FontWeight.bold,
    color: darkGreenColor,
  );

  static TextStyle buttonText1 = robotoSlabFont.copyWith(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: whiteColor,
  );

  static TextStyle buttonText = robotoSlabFont.copyWith(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: whiteColor,
  );
}
