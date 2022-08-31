import 'package:flutter/material.dart';
import 'package:portfolio/consts.dart';
import 'package:portfolio/sections/hero_section/counter_tile.dart';

class AboutElements extends StatelessWidget {
  const AboutElements({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        CounterTile(
          title: 'Websites ',
          subtitle: '6 Projects',
          iconTile: Icons.desktop_mac,
          color: AppColors.greenColor,
        ),
        SizedBox(height: 20),
        CounterTile(
          title: 'Mobile Apps',
          subtitle: '1 Mobile App Projects',
          iconTile: Icons.phone_android,
          color: AppColors.yellowColor,
        ),
        SizedBox(height: 20),
        CounterTile(
          title: 'Commercial Projects',
          subtitle: '4 Projects',
          iconTile: Icons.business,
          color: AppColors.orangeColor,
        ),
      ],
    );
  }
}
