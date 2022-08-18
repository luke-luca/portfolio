import 'package:flutter/material.dart';
import 'package:portfolio/components/about_section/about_section.dart';
import 'package:portfolio/components/footer_section/footer_section.dart';
import 'package:portfolio/components/hero_section/hero_section.dart';
import 'package:portfolio/components/nav_section/nav_bar.dart';
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
            children: [
              const NavBar(),
              const HeroSection(),
              Container(
                width: double.infinity,
                color: Colors.red,
                child: const AboutSection(),
              ),
              const FooterSection(),
            ],
          ),
        ),
      ),
    );
  }
}
