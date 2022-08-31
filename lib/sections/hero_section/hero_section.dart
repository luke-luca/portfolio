import 'package:flutter/material.dart';
import 'package:portfolio/consts.dart';
import 'package:portfolio/responsive.dart';
import 'package:portfolio/sections/hero_section/widgets/hero_description.dart';
import 'package:portfolio/sections/hero_section/widgets/hero_photo.dart';
import 'package:portfolio/sections/widgets/score_panel.dart';

class HeroSection extends StatefulWidget {
  const HeroSection({super.key});

  @override
  State<HeroSection> createState() => _HeroSectionState();
}

class _HeroSectionState extends State<HeroSection> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Padding(
      padding: (width < AppConstsMobile.isMobile)
          ? AppConstsMobile.defaultPadding
          : (width < AppConstsTablet.isTablet)
              ? AppConstsTablet.defaultPadding
              : AppConstsDesktop.defaultPadding,
      child: Responsive(
        mobile: Expanded(
          child: Column(
            children: const [
              HeroDescription(),
              HeroPhoto(),
            ],
          ),
        ),
        tablet: Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: const [
                  Expanded(flex: 2, child: HeroDescription()),
                  Expanded(flex: 3, child: HeroPhoto()),
                ],
              ),
            ],
          ),
        ),
        desktop: Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: const [
                  Expanded(flex: 2, child: HeroDescription()),
                  Expanded(flex: 3, child: HeroPhoto()),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
