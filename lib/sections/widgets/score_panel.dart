import 'package:flutter/material.dart';
import 'package:portfolio/consts.dart';
import 'package:portfolio/sections/hero_section/counter_tile.dart';

class ScorePanel extends StatelessWidget {
  const ScorePanel({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: 1150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            offset: const Offset(0, 4),
            blurRadius: 30,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: const [
          CounterTile(
            title: 'Websites ',
            subtitle: '6 Websites',
            iconTile: Icons.desktop_mac,
            color: AppColors.greenColor,
          ),
          CounterTile(
            title: 'Mobile Apps',
            subtitle: '1 Mobile App',
            iconTile: Icons.phone_android,
            color: AppColors.yellowColor,
          ),
          CounterTile(
            title: 'Commercial Projects',
            subtitle: '4 Projects',
            iconTile: Icons.business,
            color: AppColors.orangeColor,
          ),
        ],
      ),
    );
  }
}
