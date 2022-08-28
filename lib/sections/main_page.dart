import 'package:flutter/material.dart';
import 'package:portfolio/consts.dart';
import 'package:portfolio/sections/footer_section/copyrights.dart';
import 'package:portfolio/sections/footer_section/footer_section.dart';
import 'package:portfolio/sections/hero_section/hero_section.dart';
import 'package:portfolio/sections/nav_section/nav_bar.dart';
import 'package:portfolio/sections/projects_section/projects_section.dart';
import 'package:portfolio/sections/skills_section/skills_section.dart';
import 'package:portfolio/sections/widgets/custom_divider.dart';
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
    return Scaffold(
      backgroundColor: AppColors.shadedColor,
      body: SingleChildScrollView(
        controller: _controller,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                NavBar(),
                HeroSection(),
                //check if desktop
                Container(
                  width: double.infinity,
                  color: Colors.white,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [SkillsSection()],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
