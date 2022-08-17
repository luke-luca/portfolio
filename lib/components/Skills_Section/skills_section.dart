import 'package:flutter/material.dart';
import 'package:portfolio/consts.dart';

class SkillsSection extends StatefulWidget {
  const SkillsSection({Key? key}) : super(key: key);

  @override
  State<SkillsSection> createState() => _SkillsSectionState();
}

class _SkillsSectionState extends State<SkillsSection> {
  @override
  Widget build(BuildContext context) {
    //return a container that have a height of 450 and a width of 1150
    //on top have title h2 and a text pLight
    //on bottom have a icons of programming languages
    return Container(
      height: 450,
      padding: const EdgeInsets.symmetric(horizontal: 48.0),
      width: 1150,
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Skills',
                  style: h2,
                ),
                Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In ornare magna dolor, cursus facilisis sapien',
                  style: pLight,
                ),
              ],
            ),
          ),
          const VerticalDivider(
            color: orangeColor,
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
                  style: h2,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Data Structures',
                      style: h3,
                    ),
                    Icon(
                      Icons.code,
                      color: Colors.blue,
                      size: 40,
                    ),
                    Icon(
                      Icons.code,
                      color: Colors.blue,
                      size: 40,
                    ),
                    Icon(
                      Icons.code,
                      color: Colors.blue,
                      size: 40,
                    ),
                    Icon(
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
