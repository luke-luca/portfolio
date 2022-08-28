import 'dart:html';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppColors {
  /// Colors
  static const Color darkGreenColor = Color(0xFF0D2F3F);
  static const Color greenColor = Color(0xFF286F6C);
  static const Color whiteColor = Color(0xFFFFFFFF);
  static const Color shadedColor = Color(0xFFF8F7F1);
  static const Color dividerColor = Color(0xFFEEEEEC);
  static const Color lightGrayColor = Color(0xFF505557);
  static const Color yellowColor = Color(0xFFF1C249);
  static const Color orangeColor = Color(0xFFF26440);
}

class AppFonts {
  /// Fonts
  static TextStyle nunitoFont = GoogleFonts.nunito();
  static TextStyle robotoSlabFont = GoogleFonts.openSans();
}

class AppTextStyles {
  /// Text Styles
  static TextStyle h1 = AppFonts.nunitoFont.copyWith(
    fontSize: 64,
    fontWeight: FontWeight.w800,
    color: AppColors.darkGreenColor,
  );

  static TextStyle h2 = AppFonts.robotoSlabFont.copyWith(
    fontSize: 36,
    fontWeight: FontWeight.normal,
    color: AppColors.darkGreenColor,
  );

  static TextStyle h3 = AppFonts.robotoSlabFont.copyWith(
    fontSize: 22,
    fontWeight: FontWeight.w400,
    color: AppColors.darkGreenColor,
  );
  //Paragraphs
  static TextStyle pDark = AppFonts.robotoSlabFont.copyWith(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: AppColors.darkGreenColor,
  );

  static TextStyle pLight = AppFonts.robotoSlabFont.copyWith(
    fontSize: 16,
    fontWeight: FontWeight.normal,
    color: AppColors.lightGrayColor,
  );

  static TextStyle pAccent = AppFonts.robotoSlabFont.copyWith(
    fontSize: 18,
    fontWeight: FontWeight.normal,
    color: AppColors.orangeColor,
  );

  static TextStyle menuItem = AppFonts.nunitoFont.copyWith(
    fontSize: 18,
    fontWeight: FontWeight.bold,
    color: AppColors.darkGreenColor,
  );

  static TextStyle buttonText = AppFonts.robotoSlabFont.copyWith(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: AppColors.whiteColor,
  );
}

class AppConsts {
  static const String appName = 'Lukas Mazurkiewicz';
  static const String appVersion = '0.0.1';
  static const String appDescription = 'Portfolio';
  static const String appAuthor = 'Lukas Mazurkiewicz';
  static const String appAuthorEmail = '';
  static const String appAuthorWebsite = 'https://lukaszmazurkiewicz.pl';
  static const String appAuthorGithub = 'https://github.com/luke-luca';
  static const String appAuthorLinkedIn =
      'https://www.linkedin.com/in/lukaszzmazurkiewicz/';
}

class AppConstsDesktop {
  /// Desktop
  static const double isDesktop = 1024;
  static EdgeInsets defaultPadding =
      const EdgeInsets.symmetric(vertical: 64, horizontal: 48);
  static EdgeInsets defaultPaddingNavBar =
      const EdgeInsets.symmetric(vertical: 32, horizontal: 16);
}

class AppConstsTablet {
  /// Tablet
  static const double isTablet = 768;
  static EdgeInsets defaultPadding =
      const EdgeInsets.symmetric(vertical: 48, horizontal: 32);
  static EdgeInsets defaultPaddingNavBar =
      const EdgeInsets.symmetric(vertical: 32, horizontal: 16);
}

class AppConstsMobile {
  /// Mobile
  static const double isMobile = 480;
  static EdgeInsets defaultPadding =
      const EdgeInsets.symmetric(vertical: 32, horizontal: 16);
  static EdgeInsets defaultPaddingNavBar =
      const EdgeInsets.symmetric(vertical: 32, horizontal: 16);
}
