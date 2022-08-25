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
      height: 550,
      padding: const EdgeInsets.symmetric(horizontal: 48),
      width: 1150,
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Skills',
                  style: AppColors.h2,
                ),
                Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In ornare magna dolor, cursus facilisis sapien',
                  style: AppColors.pLight,
                ),
              ],
            ),
          ),
          const VerticalDivider(
            color: AppColors.orangeColor,
            thickness: 3,
            indent: 20,
            endIndent: 20,
            width: 50,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Programming Languages',
                  style: AppColors.h2,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'Data Structures',
                      style: AppColors.h3,
                    ),
                    const Icon(
                      Icons.code,
                      color: Colors.blue,
                      size: 40,
                    ),
                    const Icon(
                      Icons.code,
                      color: Colors.blue,
                      size: 40,
                    ),
                    const Icon(
                      Icons.code,
                      color: Colors.blue,
                      size: 40,
                    ),
                    const Icon(
                      Icons.code,
                      color: Colors.blue,
                      size: 40,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
