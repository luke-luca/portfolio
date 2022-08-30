import 'package:flutter/material.dart';
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
    return Container(
      width: 300,
      height: 500,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: const Color.fromARGB(255, 209, 209, 209).withOpacity(0.1),
            blurRadius: 2,
            spreadRadius: 4,
            offset: Offset.fromDirection(1),
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
                leading: Image.asset(
                  '/skills_icons/${skillList[index].icon}.png',
                  height: 16,
                  width: 16,
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
