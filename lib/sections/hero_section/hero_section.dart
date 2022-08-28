import 'package:flutter/material.dart';
import 'package:portfolio/consts.dart';
import 'package:portfolio/sections/hero_section/widgets/hero_description.dart';
import 'package:portfolio/sections/hero_section/widgets/hero_photo.dart';

class HeroSection extends StatefulWidget {
  const HeroSection({super.key});

  @override
  State<HeroSection> createState() => _HeroSectionState();
}

class _HeroSectionState extends State<HeroSection> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Container(
      width: 1150,
      height: MediaQuery.of(context).size.height,
      padding: (width < AppConstsMobile.isMobile)
          ? AppConstsMobile.defaultPadding
          : (width < AppConstsTablet.isTablet)
              ? AppConstsTablet.defaultPadding
              : AppConstsDesktop.defaultPadding,
      child: LayoutBuilder(
        builder: (context, constraints) {
          if (width < AppConstsMobile.isMobile) {
            return Column(
              children: const [
                Expanded(flex: 2, child: HeroDescription()),
                Expanded(flex: 1, child: HeroPhoto()),
              ],
            );
          } else {
            return Expanded(
              child: Row(
                children: const [
                  Expanded(flex: 3, child: HeroDescription()),
                  Expanded(flex: 2, child: HeroPhoto()),
                ],
              ),
            );
          }
        },
      ),
    );
  }
}
