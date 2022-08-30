import 'package:flutter/material.dart';
import 'package:portfolio/consts.dart';

class HeroDescription extends StatelessWidget {
  const HeroDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Hi, There!\nI'm Lukas",
          style: AppTextStyles.h1,
        ),
        Text('aspiring web and mobile developer', style: AppTextStyles.h2),
        const SizedBox(height: 10),
        Text(
          'kontakt@lukaszmazurkiewicz.pl',
          style: AppTextStyles.pAccent,
        ),
      ],
    );
  }
}
