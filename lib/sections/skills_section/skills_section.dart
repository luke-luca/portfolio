import 'package:flutter/material.dart';
import 'package:portfolio/consts.dart';

class SkillsSection extends StatefulWidget {
  const SkillsSection({super.key});

  @override
  State<SkillsSection> createState() => _SkillsSectionState();
}

class _SkillsSectionState extends State<SkillsSection> {
  final List<Skill> skillList = const [
    Skill(
      icon: Icons.access_time,
      skill: 'Dupa',
    ),
    Skill(
      icon: Icons.abc,
      skill: 'ASasdasdf',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.white,
      child: Center(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 50),
          width: 1150,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Skills',
                style: AppTextStyles.h2,
              ),
              const SizedBox(height: 20),
              Text(
                'I have experience with the following programming languages:',
                textAlign: TextAlign.justify,
                style: AppTextStyles.pLight,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SkillTile(
                    title: 'Programming Languages',
                    subtitle: 'What I use for my projects',
                    skillList: skillList,
                  ),
                  const SizedBox(width: 10),
                  SkillTile(
                    title: 'Programming Languages',
                    subtitle: 'What I use for my projects',
                    skillList: skillList,
                  ),
                  const SizedBox(width: 10),
                  SkillTile(
                    title: 'Programming Languages',
                    subtitle: 'What I use for my projects',
                    skillList: skillList,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class SkillTile extends StatelessWidget {
  const SkillTile({
    super.key,
    required this.title,
    required this.subtitle,
    required this.skillList,
  });
  final String title;
  final String subtitle;
  final List<Skill> skillList;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              spreadRadius: 5,
              blurRadius: 7,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: AppTextStyles.h3,
            ),
            Text(
              subtitle,
              style: AppTextStyles.pLight,
            ),
            ListView.builder(
              itemCount: skillList.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(skillList[index].skill),
                  leading: Icon(skillList[index].icon),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class Skill {
  const Skill({
    required this.skill,
    required this.icon,
  });
  final String skill;
  final IconData icon;
}
