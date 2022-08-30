import 'package:flutter/material.dart';
import 'package:portfolio/consts.dart';
import 'package:portfolio/responsive.dart';
import 'package:portfolio/sections/skills_section/models/skill_model.dart';
import 'package:portfolio/sections/skills_section/widgets/skills_tile.dart';

class SkillsSection extends StatefulWidget {
  const SkillsSection({super.key});

  @override
  State<SkillsSection> createState() => _SkillsSectionState();
}

class _SkillsSectionState extends State<SkillsSection> {
  final List<Skill> programmingList = const [
    Skill(
      icon: 'flutter',
      skill: 'Flutter',
    ),
    Skill(
      icon: 'dart',
      skill: 'Dart',
    ),
    Skill(
      icon: 'html',
      skill: 'HTML5',
    ),
    Skill(
      icon: 'css',
      skill: 'CSS',
    ),
    Skill(
      icon: 'flutter',
      skill: 'C#',
    ),
  ];
  final List<Skill> softwareList = const [
    Skill(
      icon: 'flutter',
      skill: 'Figma',
    ),
    Skill(
      icon: 'dart',
      skill: 'Adobe XD',
    ),
    Skill(
      icon: 'html',
      skill: 'Adobe Photoshop',
    ),
    Skill(
      icon: 'css',
      skill: 'Unity',
    ),
  ];
  final List<Skill> languagesList = const [
    Skill(
      icon: 'flutter',
      skill: 'Polish (native)',
    ),
    Skill(
      icon: 'dart',
      skill: 'English',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Padding(
      padding: (width < AppConstsMobile.isMobile)
          ? AppConstsMobile.defaultPadding
          : (width < AppConstsTablet.isTablet)
              ? AppConstsTablet.defaultPadding
              : AppConstsDesktop.defaultPadding,
      child: SizedBox(
        width: 1150,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Tech Stack',
              style: AppTextStyles.h2,
            ),
            const SizedBox(height: 10),
            Text(
              'Hihihihihi',
              textAlign: TextAlign.justify,
              style: AppTextStyles.pDark,
            ),
            const SizedBox(height: 30),
            GridView.count(
              crossAxisSpacing: 50,
              mainAxisSpacing: 50,
              shrinkWrap: true,
              crossAxisCount: Responsive.isDesktop(context) ? 3 : 1,
              physics: const NeverScrollableScrollPhysics(),
              children: [
                SkillTile(
                  title: 'Programming Languages',
                  subtitle: 'What I use for my projects',
                  skillList: programmingList,
                ),
                SkillTile(
                  title: 'Software',
                  subtitle: 'What I use for my projects',
                  skillList: softwareList,
                ),
                SkillTile(
                  title: 'Languages',
                  subtitle: 'What I use for my projects',
                  skillList: languagesList,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
