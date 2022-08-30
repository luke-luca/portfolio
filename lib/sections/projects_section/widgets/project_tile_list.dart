import 'package:flutter/material.dart';
import 'package:portfolio/consts.dart';
import 'package:portfolio/sections/projects_section/widgets/project_tile.dart';

List<Widget> projectsItems = const [
  ProjectTile(
    title: 'riskolobrzeg.pl',
    description: 'A portfolio page created with flutter',
    image: 'riskolobrzeg',
    backgroundColor: AppColors.darkGreenColor,
  ),
  ProjectTile(
    title: 'surgipet.com',
    description: 'A portfolio page created with flutter',
    image: 'surgipet',
    backgroundColor: AppColors.orangeColor,
  ),
  ProjectTile(
    title: 'alemajster.pl',
    description: 'A portfolio page created with flutter',
    image: 'alemajster',
    backgroundColor: AppColors.yellowColor,
  ),
  ProjectTile(
    title: 'Currency Rates App',
    description: 'A portfolio page created with flutter',
    image: 'currency_exchange',
    backgroundColor: AppColors.greenColor,
  ),
  ProjectTile(
    title: 'surgipeturegentcare.com',
    description: 'A portfolio page created with flutter',
    image: 'surgipeturgent',
    backgroundColor: AppColors.orangeColor,
  ),
  ProjectTile(
    title: 'Portfolio',
    description: 'A portfolio page created with flutter',
    image: 'surgipet',
    backgroundColor: AppColors.darkGreenColor,
  ),
];
