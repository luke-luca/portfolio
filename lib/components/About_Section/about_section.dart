import 'package:flutter/material.dart';
import 'package:portfolio/consts.dart';
import 'package:portfolio/l10n/l10n.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 450,
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: SizedBox(
        width: 1150,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  CounterTile(
                    title: 'Lorem',
                    subtitle: 'LoremIpsum Latatata',
                    icon: Icons.abc,
                    color: AppColors.darkGreenColor,
                  ),
                  CounterTile(
                    title: 'Lorem',
                    subtitle: 'LoremIpsum Latatata',
                    icon: Icons.abc,
                    color: AppColors.yellowColor,
                  ),
                  CounterTile(
                    title: 'Lorem',
                    subtitle: 'LoremIpsum Latatata',
                    icon: Icons.abc,
                    color: AppColors.orangeColor,
                  ),
                ],
              ),
            ),
            const VerticalDivider(
              color: AppColors.orangeColor,
              thickness: 3,
              indent: 20,
              endIndent: 20,
              width: 50,
            ),
            Expanded(
              child: Column(
                children: [
                  Text(
                    'What do I do?',
                    style: AppColors.h2,
                  ),
                  Text(
                    context.l10n.loremLong,
                    textAlign: TextAlign.justify,
                  ),
                  Text(
                    context.l10n.loremLong,
                    textAlign: TextAlign.justify,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      primary: AppColors.yellowColor,
                      elevation: 0,
                      padding: const EdgeInsets.symmetric(
                        vertical: 18,
                        horizontal: 24,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                    child: Text(
                      'Contact me',
                      style: AppColors.buttonText,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CounterTile extends StatelessWidget {
  const CounterTile({
    super.key,
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.color,
  });

  final String title;
  final String subtitle;
  final IconData icon;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 12),
      width: 300,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 2,
            spreadRadius: 4,
            offset: Offset.fromDirection(1),
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: color,
            ),
            child: const Icon(
              Icons.favorite,
              color: Colors.white,
              size: 30,
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title, style: AppColors.pDark),
              Text(subtitle, style: AppColors.pLight),
            ],
          ),
        ],
      ),
    );
  }
}
