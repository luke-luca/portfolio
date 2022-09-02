import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio/consts.dart';
import 'package:portfolio/sections/skills_section/models/skill_model.dart';

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
    return SizedBox(
      width: 250,
      height: 350,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
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
            ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              itemCount: skillList.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(
                    skillList[index].skill,
                    style: AppTextStyles.h3,
                  ),
                  leading: SvgPicture.asset(
                    'assets/skills_icons/${skillList[index].icon}-plain.svg',
                    width: 16,
                    height: 16,
                    color: AppColors.darkGreenColor,
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
