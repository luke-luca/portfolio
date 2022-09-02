import 'package:flutter/material.dart';
import 'package:portfolio/consts.dart';
import 'package:portfolio/sections/about_section/about_section.dart';
import 'package:portfolio/sections/footer_section/footer_section.dart';
import 'package:portfolio/sections/hero_section/hero_section.dart';
import 'package:portfolio/sections/nav_section/nav_bar.dart';
import 'package:portfolio/sections/projects_section/projects_section.dart';
import 'package:portfolio/sections/skills_section/skills_section.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  //how to scroll to each section on click describe to me
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CustomScaffoldWithNavBar(
      body: Center(
        child: Column(
          children: const [
            HeroSection(),
            AboutSection(),
            SkillsSection(),
            ProjectsSection(),
            FooterSection(),
          ],
        ),
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
