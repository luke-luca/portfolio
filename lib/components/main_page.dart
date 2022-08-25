import 'package:flutter/material.dart';
import 'package:portfolio/components/Hero_Section/hero_section.dart';
import 'package:portfolio/components/Projects_Section/projects_section.dart';
import 'package:portfolio/components/about_section/about_section.dart';
import 'package:portfolio/components/footer_section/footer_section.dart';
import 'package:portfolio/components/nav_section/nav_bar.dart';

import 'package:portfolio/components/skills_section/skills_section.dart';
import 'package:portfolio/consts.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.shadedColor,
      body: SingleChildScrollView(
        child: Align(
          alignment: Alignment.topCenter,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const NavBar(),
              const HeroSection(),
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
            ],
          ),
        ),
      ),
    );
  }
}
