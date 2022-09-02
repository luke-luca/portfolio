import 'package:flutter/material.dart';
import 'package:portfolio/consts.dart';
import 'package:url_launcher/url_launcher.dart';

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
        TextButton(
          onPressed: () {
            final emailLaunchUri = Uri(
              scheme: 'mailto',
              path: 'kontakt@lukaszmazurkiewicz.pl',
            );
            launchUrl(emailLaunchUri);
          },
          child: Text(
            'kontakt@lukaszmazurkiewicz.pl',
            style: AppTextStyles.h2.copyWith(
              color: AppColors.orangeColor,
              fontSize: 20,
              decoration: TextDecoration.underline,
            ),
          ),
        ),
      ],
    );
  }
}
