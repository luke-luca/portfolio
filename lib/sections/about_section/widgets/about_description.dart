import 'package:flutter/material.dart';
import 'package:portfolio/consts.dart';
import 'package:portfolio/sections/widgets/primary_button.dart';

class AboutDescription extends StatelessWidget {
  const AboutDescription({super.key});

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
              'I am a freelancer and aspiring web developer who is passionate about building user-friendly websites and apps. My interests lie mainly within the area of web development, but also include other areas such as design or graphics. I want my UI projects to be minimalistic, aesthetic and accessible for everyone. UI is my second passion, right after programming. I am hard working and always curious about new technologies and innovations.',
              textAlign: TextAlign.justify,
              style: AppTextStyles.pDark,
            ),
            const SizedBox(height: 10),
            Text(
              'Currently, I am focusing on creating mobile applications and websites. I have experience working with clients from Poland and abroad. Communication in the team is the key to success for me.',
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
