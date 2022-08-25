import 'package:flutter/material.dart';
import 'package:portfolio/components/widgets/counter_tile.dart';
import 'package:portfolio/consts.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      child: Container(
        height: 550,
        width: 1150,
        padding: const EdgeInsets.symmetric(horizontal: 48),
        child: SizedBox(
          child: Row(
            children: [
              Column(
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
              const VerticalDivider(
                color: AppColors.orangeColor,
                thickness: 3,
                indent: 20,
                endIndent: 20,
                width: 100,
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'What do I do?',
                      style: AppColors.h2,
                    ),
                    Column(
                      // ignore: duplicate_ignore, duplicate_ignore
                      children: const [
                        // ignore: lines_longer_than_80_chars, lines_longer_than_80_chars
                        Text(
                          'I am a second-year computer science student at  Collegium da Vinci in Poznań. For years I have been interested in topics related to computer science, especially programming. ',
                          textAlign: TextAlign.justify,
                        ),
                        Text(
                          'I am guided by logic combined with creative solutions in my actions. Good work organization is the key to my tasks. I am not afraid of negative opinions, it motivates me to develop further. Currently, I want to expand my knowledge in creating mobile applications in Flutter. I am interested in painting, drawing, and traveling',
                          textAlign: TextAlign.justify,
                        ),
                      ],
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
      ),
    );
  }
}
