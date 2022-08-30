import 'package:flutter/material.dart';
import 'package:portfolio/consts.dart';
import 'package:portfolio/sections/projects_section/widgets/project_tile.dart';

List<Widget> projectsItems = const [
  ProjectTile(
    title: 'Ris Kolobrzeg',
    description: 'Website for local branding company.',
    image: 'riskolobrzeg',
    backgroundColor: AppColors.darkGreenColor,
  ),
  ProjectTile(
    title: 'Surgipet',
    description: 'Website for veterinary clinic in USA.',
    image: 'surgipet',
    backgroundColor: AppColors.darkGreenColor,
  ),
  ProjectTile(
    title: 'Ale Majster!',
    description: 'A website for roof cleaning company',
    image: 'alemajster',
    backgroundColor: AppColors.darkGreenColor,
  ),
  ProjectTile(
    title: 'Currency Rates Website',
    description: 'Semestral project for university.',
    image: 'currency_exchange',
    backgroundColor: AppColors.darkGreenColor,
  ),
  ProjectTile(
    title: 'Surgipet Urgent Care',
    description: 'Website for veterinary clinic in USA.',
    image: 'surgipeturgent',
    backgroundColor: AppColors.darkGreenColor,
  ),
  ProjectTile(
    title: 'Portfolio',
    description: 'Own portfolio page.',
    image: 'surgipet',
    backgroundColor: AppColors.darkGreenColor,
  ),
];
