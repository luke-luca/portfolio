import 'package:flutter/material.dart';
import 'package:portfolio/consts.dart';
import 'package:portfolio/sections/hero_section/counter_tile.dart';

class AboutElements extends StatelessWidget {
  const AboutElements({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        CounterTile(
          title: 'Websites ',
          subtitle: '6 Done Websites',
          iconTile: Icons.desktop_mac,
          color: AppColors.darkGreenColor,
        ),
        SizedBox(height: 20),
        CounterTile(
          title: 'Mobile Apps',
          subtitle: '1 Done Mobile App',
          iconTile: Icons.phone_android,
          color: AppColors.yellowColor,
        ),
        SizedBox(height: 20),
        CounterTile(
          title: 'Commercial Projects',
          subtitle: '4 Done Projects',
          iconTile: Icons.business,
          color: AppColors.orangeColor,
        ),
      ],
    );
  }
}
