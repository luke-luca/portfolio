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
      width: 1150,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 50),
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
            children: [
              SkillTile(
                title: 'Programming Languages',
                subtitle: 'What I use for my projects',
              ),
              ListView.builder(
                itemCount: 1,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return SkillTile(
                    title: 'Dart',
                    subtitle:
                        'Dart is a modern programming language that lets you build fast, reliable, and secure apps.',
                  );
                },
              ),
            ],
          )
        ],
      ),
    );
  }
}

class SkillTile extends StatelessWidget {
  SkillTile({
    super.key,
    required this.title,
    required this.subtitle,
  });
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Container(
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
        ],
      ),
    );
  }
}
