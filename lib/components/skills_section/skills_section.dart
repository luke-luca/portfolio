import 'package:flutter/material.dart';
import 'package:portfolio/consts.dart';

class SkillsSection extends StatefulWidget {
  const SkillsSection({super.key});

  @override
  State<SkillsSection> createState() => _SkillsSectionState();
}

class _SkillsSectionState extends State<SkillsSection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 50),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Skills',
            style: AppColors.h2,
          ),
          const SizedBox(height: 20),
          Text(
            'I have experience with the following programming languages:',
            textAlign: TextAlign.justify,
            style: AppColors.pLight,
          ),
          GridView.count(
            crossAxisCount: 3,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            children: skillsItems,
          ),
          Text(
            'And I am also familiar with the following apps:',
            textAlign: TextAlign.justify,
            style: AppColors.pLight,
          ),
          GridView.count(
            crossAxisCount: 3,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            children: techItems,
          ),
        ],
      ),
    );
  }
}

List<Widget> skillsItems = const [
  SkillTile(image: 'dart', text: 'Dart'),
  SkillTile(image: 'flutter', text: 'Flutter'),
  SkillTile(image: 'wordpress', text: 'Wordpress'),
  SkillTile(image: 'html', text: 'HTML'),
  SkillTile(image: 'css', text: 'CSS'),
  SkillTile(image: 'postgres', text: 'Postgres'),
];

List<Widget> techItems = const [
  SkillTile(image: 'dart', text: 'Dart'),
  SkillTile(image: 'flutter', text: 'Flutter'),
  SkillTile(image: 'wordpress', text: 'Wordpress'),
  SkillTile(image: 'html', text: 'HTML'),
];

class SkillTile extends StatelessWidget {
  const SkillTile({
    super.key,
    required this.image,
    required this.text,
  });
  final String image;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            '/images/skills_icons/$image.png',
            width: 64,
            height: 62,
          ),
          const SizedBox(height: 10),
          Text(
            text,
            style: AppColors.pLight,
          ),
        ],
      ),
    );
  }
}
