import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/consts.dart';
import 'package:portfolio/responsive.dart';
import 'package:portfolio/sections/projects_section/widgets/project_tile_list.dart';

class ProjectsSection extends StatefulWidget {
  const ProjectsSection({super.key});

  @override
  State<ProjectsSection> createState() => _ProjectsSectionState();
}

class _ProjectsSectionState extends State<ProjectsSection> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Container(
      width: double.infinity,
      color: Colors.white,
      padding: (width < AppConstsMobile.isMobile)
          ? AppConstsMobile.defaultPadding
          : (width < AppConstsTablet.isTablet)
              ? AppConstsTablet.defaultPadding
              : AppConstsDesktop.defaultPadding,
      child: Center(
        child: SizedBox(
          width: 1150,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Latest Projects',
                    style: AppTextStyles.h2,
                  ),
                  const SizedBox(height: 20),
                  Text(
                    'Bringing new ideas to real projects is a pleasure for me, and I treat every project with excessive precision.',
                    textAlign: TextAlign.justify,
                    style: AppTextStyles.pDark,
                  ),
                ],
              ),
              const SizedBox(height: 30),
              if (Responsive.isMobile(context)) const Carousel(),
              if (Responsive.isTablet(context)) const Grid(),
              if (Responsive.isDesktop(context)) const Grid(),
            ],
          ),
        ),
      ),
    );
  }
}

class Carousel extends StatelessWidget {
  const Carousel({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: projectsItems,
      options: CarouselOptions(
        height: 300,
        autoPlay: true,
        autoPlayInterval: const Duration(seconds: 5),
        autoPlayAnimationDuration: const Duration(milliseconds: 1000),
        enlargeCenterPage: true,
      ),
    );
  }
}

class Grid extends StatelessWidget {
  const Grid({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      mainAxisSpacing: 50,
      crossAxisSpacing: 50,
      shrinkWrap: true,
      crossAxisCount: 3,
      physics: const NeverScrollableScrollPhysics(),
      children: projectsItems,
    );
  }
}
