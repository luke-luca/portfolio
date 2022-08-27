import 'package:flutter/material.dart';
import 'package:portfolio/components/Hero_Section/hero_section.dart';
import 'package:portfolio/components/Hero_Section/score_panel.dart';
import 'package:portfolio/components/Projects_Section/projects_section.dart';
import 'package:portfolio/components/about_section/about_section.dart';
import 'package:portfolio/components/footer_section/copyrights.dart';
import 'package:portfolio/components/footer_section/footer_section.dart';
import 'package:portfolio/components/nav_section/nav_bar.dart';

import 'package:portfolio/components/skills_section/skills_section.dart';
import 'package:portfolio/consts.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  late ScrollController _controller;
  double pixels = 0;
  @override
  void initState() {
    super.initState();
    _controller = ScrollController();
    _controller.addListener(() {
      setState(() {
        pixels = _controller.position.pixels;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.shadedColor,
      body: SingleChildScrollView(
        controller: _controller,
        child: Align(
          alignment: Alignment.topCenter,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: const [
                    NavBar(),
                    HeroSection(),
                  ],
                ),
              ),
              // // AnimatedOpacity(
              // //   opacity: pixels <= 100 ? 1.0 : 0.0,
              // //   duration: const Duration(milliseconds: 300),
              // //   child: AnimatedPadding(
              // //     duration: const Duration(milliseconds: 500),
              // //     padding: EdgeInsets.only(left: pixels >= 100 ? 0 : 0),
              // //     child: const Padding(
              // //       padding: EdgeInsets.symmetric(horizontal: 48),
              // //       child: ScorePanel(),
              // //     ),
              // //   ),
              // // ),
              Container(
                width: double.infinity,
                color: Colors.white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [AboutSection()],
                ),
              ),
              const SkillsSection(),
              Container(
                width: double.infinity,
                color: Colors.white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [ProjectsSection()],
                ),
              ),
              const FooterSection(),
              const Copyrights(),
            ],
          ),
        ),
      ),
    );
  }
}
