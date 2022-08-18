// Copyright (c) 2022, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'package:flutter/material.dart';
import 'package:portfolio/bootstrap.dart';

import 'package:portfolio/components/About_Section/about_section.dart';
import 'package:portfolio/components/Footer_Section/footer_section.dart';
import 'package:portfolio/components/Hero_Section/hero_section.dart';
import 'package:portfolio/components/Nav_Section/nav_bar.dart';
import 'package:portfolio/consts.dart';

void main() {
  bootstrap(
    () => const MaterialApp(
      home: MyApp(),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.shadedColor,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              NavBar(),
              HeroSection(),
              AboutSection(),
              FooterSection(),
            ],
          ),
        ),
      ),
    );
  }
}
