import 'package:flutter/material.dart';
import 'package:portfolio/components/elements/main_button.dart';
import 'package:portfolio/components/widgets/counter_tile.dart';
import 'package:portfolio/consts.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return LayoutBuilder(
      builder: (context, constraints) {
        if (width < 800) {
          return const AboutMeMobile();
        } else {
          return const AboutMeDesktop();
        }
      },
    );
  }
}

class AboutMeDesktop extends StatelessWidget {
  const AboutMeDesktop({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1150,
      padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 50),
      child: SizedBox(
        child: Row(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
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
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'What do I do?',
                    style: AppColors.h1,
                  ),
                  const SizedBox(height: 20),
                  Column(
                    children: const [
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
                  const SizedBox(height: 20),
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

class AboutMeMobile extends StatelessWidget {
  const AboutMeMobile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 16),
      child: Column(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'What do I do?',
                style: AppColors.h2.copyWith(
                  fontSize: 36,
                ),
              ),
              const SizedBox(height: 10),
              Column(
                children: [
                  Text(
                    'I am a second-year computer science student at  Collegium da Vinci in Poznań. For years I have been interested in topics related to computer science, especially programming. ',
                    textAlign: TextAlign.justify,
                    style: AppColors.pLight,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'I am guided by logic combined with creative solutions in my actions. Good work organization is the key to my tasks. I am not afraid of negative opinions, it motivates me to develop further. Currently, I want to expand my knowledge in creating mobile applications in Flutter. I am interested in painting, drawing, and traveling',
                    textAlign: TextAlign.justify,
                    style: AppColors.pLight,
                  ),
                ],
              ),
              const SizedBox(height: 10),
              const MainButton()
            ],
          ),
          const SizedBox(height: 20),
          const Divider(
            color: AppColors.orangeColor,
            thickness: 1,
            indent: 50,
            endIndent: 50,
            height: 10,
          ),
          const SizedBox(height: 20),
          const CounterTile(
            title: 'Websites ',
            subtitle: '6 Done Websites',
            iconTile: Icons.desktop_mac,
            color: AppColors.darkGreenColor,
          ),
          const SizedBox(height: 20),
          const CounterTile(
            title: 'Mobile Apps',
            subtitle: '1 Done Mobile App',
            iconTile: Icons.phone_android,
            color: AppColors.yellowColor,
          ),
          const SizedBox(height: 20),
          const CounterTile(
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
