import 'package:flutter/material.dart';
import 'package:portfolio/consts.dart';
import 'package:portfolio/sections/about_section/about_section.dart';
import 'package:portfolio/sections/hero_section/hero_section.dart';
import 'package:portfolio/sections/nav_section/nav_bar.dart';
import 'package:portfolio/sections/skills_section/skills_section.dart';
import 'package:portfolio/sections/widgets/score_panel.dart';

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
    return CustomScaffoldWithNavBar(
      body: Column(
        children: const [
          HeroSection(),
          SkillsSection(),
          AboutSection(),
        ],
      ),
    );
  }
}

class CustomScaffoldWithNavBar extends StatelessWidget {
  const CustomScaffoldWithNavBar({
    super.key,
    required this.body,
  });

  final Widget body;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.shadedColor,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              children: [
                Column(
                  children: [
                    const SizedBox(height: 90),
                    body,
                  ],
                ),
                const NavBar(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
