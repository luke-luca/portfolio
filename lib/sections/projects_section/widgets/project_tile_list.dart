import 'package:flutter/material.dart';
import 'package:portfolio/consts.dart';
import 'package:portfolio/sections/projects_section/widgets/project_tile.dart';

List<Widget> projectsItems = const [
  ProjectTile(
    title: 'Portfolio',
    description: 'Own portfolio page.',
    image: 'portfolio',
    backgroundColor: AppColors.yellowColor,
    techList: [
      'flutter',
      'dart',
    ],
    linkTo: AppConstsLinksProject.portfolio,
  ),
  ProjectTile(
    title: 'Ris Kolobrzeg',
    description: 'Website for local branding company.',
    image: 'riskolobrzeg',
    backgroundColor: AppColors.orangeColor,
    techList: ['wordpress', 'elementor', 'php'],
    linkTo: AppConstsLinksProject.riskolobrzeg,
  ),
  ProjectTile(
    title: 'Surgipet / Surgipet Urgent Care',
    description: 'Website for veterinary clinic in USA.',
    image: 'surgipet',
    backgroundColor: AppColors.darkGreenColor,
    techList: ['webflow'],
    linkTo: AppConstsLinksProject.surgipet,
  ),
  ProjectTile(
    title: 'Currency Rates Website',
    description: 'Semestral project for university.',
    image: 'currency_exchange',
    backgroundColor: AppColors.darkGreenColor,
    techList: ['flutter', 'dart', 'dio', 'syncfusion'],
    linkTo: AppConstsLinksProject.currencyExchange,
  ),
  ProjectTile(
    title: 'Daily Tasks',
    description: 'An app for managing time and tasks.',
    image: 'daily_tasks',
    backgroundColor: AppColors.orangeColor,
    techList: ['flutter', 'dart', 'sqlite', 'dio'],
    linkTo: AppConstsLinksProject.dailyTasks,
  ),
  ProjectTile(
    title: 'Ale Majster!',
    description: 'A website for roof cleaning company',
    image: 'alemajster',
    backgroundColor: AppColors.yellowColor,
    techList: ['wordpress', 'elementor', 'php'],
    linkTo: AppConstsLinksProject.alemajster,
  ),
];
