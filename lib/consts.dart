import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//Colors
const Color darkGreenColor = Color(0xFF0D2F3F);
const Color greenColor = Color(0xFF286F6C);
const Color whiteColor = Color(0xFFFFFFFF);
const Color shadedColor = Color(0xFFF8F7F1);
const Color lightGrayColor = Color(0xFF96A0A3);
const Color yellowColor = Color(0xFFF1C249);
const Color orangeColor = Color(0xFFF26440);

//Fonts
TextStyle nunitoFont = GoogleFonts.nunito();
TextStyle robotoSlabFont = GoogleFonts.robotoSlab();

//Headings
TextStyle h1 = nunitoFont.copyWith(
  fontSize: 64,
  fontWeight: FontWeight.w800,
  color: darkGreenColor,
);

TextStyle h2 = robotoSlabFont.copyWith(
  fontSize: 36,
  fontWeight: FontWeight.normal,
  color: darkGreenColor,
);

TextStyle h3 = robotoSlabFont.copyWith(
  fontSize: 22,
  fontWeight: FontWeight.w400,
  color: darkGreenColor,
);
//Paragraphs
TextStyle pDark = robotoSlabFont.copyWith(
  fontSize: 16,
  fontWeight: FontWeight.bold,
  color: darkGreenColor,
);

TextStyle pLight = robotoSlabFont.copyWith(
  fontSize: 16,
  fontWeight: FontWeight.normal,
  color: lightGrayColor,
);

TextStyle pAccent = robotoSlabFont.copyWith(
  fontSize: 18,
  fontWeight: FontWeight.normal,
  color: orangeColor,
);

TextStyle menuItem = nunitoFont.copyWith(
  fontSize: 18,
  fontWeight: FontWeight.bold,
  color: darkGreenColor,
);

TextStyle buttonText = robotoSlabFont.copyWith(
  fontSize: 16,
  fontWeight: FontWeight.bold,
  color: whiteColor,
);
