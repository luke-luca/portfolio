import 'package:flutter/material.dart';
import 'package:portfolio/consts.dart';
import 'package:portfolio/sections/hero_section/counter_tile.dart';
import 'package:portfolio/sections/widgets/primary_button.dart';

class AboutDescription extends StatelessWidget {
  const AboutDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'What do I do?',
          style: AppTextStyles.h2,
        ),
        const SizedBox(height: 10),
        Column(
          children: [
            Text(
              'I am a second-year computer science student at  Collegium da Vinci in Poznań. For years I have been interested in topics related to computer science, especially programming. ',
              textAlign: TextAlign.justify,
              style: AppTextStyles.pDark,
            ),
            const SizedBox(height: 10),
            Text(
              'I am guided by logic combined with creative solutions in my actions. Good work organization is the key to my tasks. I am not afraid of negative opinions, it motivates me to develop further. Currently, I want to expand my knowledge in creating mobile applications in Flutter. I am interested in painting, drawing, and traveling',
              textAlign: TextAlign.justify,
              style: AppTextStyles.pDark,
            ),
          ],
        ),
        const SizedBox(height: 10),
        const MainButton()
      ],
    );
  }
}
