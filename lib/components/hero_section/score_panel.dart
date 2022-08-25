import 'package:flutter/material.dart';
import 'package:portfolio/components/widgets/counter_tile.dart';
import 'package:portfolio/consts.dart';

class ScorePanel extends StatelessWidget {
  const ScorePanel({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
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
            subtitle: '6 Done Websites',
            iconTile: Icons.desktop_mac,
            color: AppColors.darkGreenColor,
          ),
          CounterTile(
            title: 'Mobile Apps',
            subtitle: '1 Done Mobile App',
            iconTile: Icons.phone_android,
            color: AppColors.yellowColor,
          ),
          CounterTile(
            title: 'Commercial Projects',
            subtitle: '4 Done Projects',
            iconTile: Icons.business,
            color: AppColors.orangeColor,
          ),
        ],
      ),
    );
  }
}
