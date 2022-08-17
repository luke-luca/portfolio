import 'package:flutter/material.dart';
import 'package:portfolio/components/About_Section/about_section.dart';
import 'package:portfolio/components/Footer_Section/footer_section.dart';
import 'package:portfolio/components/Nav_Section/nav_bar.dart';
import 'package:portfolio/components/score_panel.dart';
import 'package:portfolio/consts.dart';

import 'components/Hero_Section/hero_section.dart';

void main() {
  runApp(const MaterialApp(
    home: MyApp(),
    debugShowCheckedModeBanner: false,
  ));
}

double collapsableHeight = 0.0;

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: shadedColor,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
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
