import 'package:flutter/material.dart';
import 'package:portfolio/consts.dart';
import 'package:portfolio/responsive.dart';
import 'package:portfolio/sections/skills_section/models/skill_model.dart';
import 'package:portfolio/sections/skills_section/widgets/skills_tile.dart';
import 'package:portfolio/sections/skills_section/widgets/skills_tile_decoration.dart';

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
      icon: 'html5',
      skill: 'HTML5',
    ),
    Skill(
      icon: 'css3',
      skill: 'CSS',
    ),
    Skill(
      icon: 'csharp',
      skill: 'C#',
    ),
  ];
  final List<Skill> softwareList = const [
    Skill(
      icon: 'figma',
      skill: 'Figma',
    ),
    Skill(
      icon: 'xd',
      skill: 'Adobe XD',
    ),
    Skill(
      icon: 'photoshop',
      skill: 'Adobe Photoshop',
    ),
    Skill(
      icon: 'unity',
      skill: 'Unity',
    ),
  ];
  final List<Skill> languagesList = const [
    Skill(
      icon: 'language',
      skill: 'Polish (native)',
    ),
    Skill(
      icon: 'language',
      skill: 'English B2',
    ),
    Skill(
      icon: 'language',
      skill: 'German A1',
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
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Technology Stack',
              style: AppTextStyles.h2,
            ),
            const SizedBox(height: 10),
            Text(
              'Daily usage, languages and technologies in my daily life.',
              textAlign: TextAlign.justify,
              style: AppTextStyles.pDark,
            ),
            const SizedBox(height: 30),
            Wrap(
              alignment: getWrapAlignment(context),
              direction: Responsive.isDesktop(context)
                  ? Axis.horizontal
                  : Axis.vertical,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const SkillDecoration(dotColor: AppColors.greenColor),
                    SkillTile(
                      title: 'Programming Languages',
                      subtitle: 'to develop',
                      skillList: programmingList,
                    ),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const SkillDecoration(dotColor: AppColors.yellowColor),
                    SkillTile(
                      title: 'Software',
                      subtitle: 'to create',
                      skillList: softwareList,
                    ),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const SkillDecoration(dotColor: AppColors.orangeColor),
                    SkillTile(
                      title: 'Languages',
                      subtitle: 'to communicate',
                      skillList: languagesList,
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 30),
            RichText(
              textAlign: TextAlign.justify,
              text: TextSpan(
                style: AppTextStyles.pDark,
                children: [
                  const TextSpan(
                    text: 'Nowadays, my main programming language is ',
                  ),
                  TextSpan(
                    text: 'dart',
                    style: AppTextStyles.h3,
                  ),
                  const TextSpan(
                    text: ' and framework ',
                  ),
                  TextSpan(
                    text: 'flutter',
                    style: AppTextStyles.h3,
                  ),
                  TextSpan(
                    text: ', I also have experience in packages like',
                    style: AppTextStyles.pDark,
                  ),
                  TextSpan(
                    text: ' Dio, Syncfusion, Firebase, Firebase Auth, SQLite.',
                    style: AppTextStyles.h3,
                  ),
                  TextSpan(
                    text: 'I seamlessly use ',
                    style: AppTextStyles.pDark,
                  ),
                  TextSpan(
                    text: 'REST API and JSON',
                    style: AppTextStyles.h3,
                  ),
                  TextSpan(
                    text:
                        '  files. I am open to learning and using new things in my projects.',
                    style: AppTextStyles.pDark,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  WrapAlignment getWrapAlignment(BuildContext context) {
    if (Responsive.isDesktop(context)) {
      return WrapAlignment.spaceBetween;
    } else {
      return WrapAlignment.center;
    }
  }
}
