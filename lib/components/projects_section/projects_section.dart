import 'package:flutter/material.dart';
import 'package:portfolio/consts.dart';
import 'package:carousel_slider/carousel_slider.dart';

class ProjectsSection extends StatefulWidget {
  const ProjectsSection({super.key});

  @override
  State<ProjectsSection> createState() => _ProjectsSectionState();
}

class _ProjectsSectionState extends State<ProjectsSection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 50),
      width: 1150,
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Latest Projects',
                    style: AppColors.h2,
                  ),
                  Text(
                    'I love creating things and always do my best to make them look great',
                    textAlign: TextAlign.justify,
                    style: AppColors.pLight,
                  ),
                ]),
          ),
          const SizedBox(height: 20),
          CarouselSlider(
            items: projectsItems,
            options: CarouselOptions(
              initialPage: 0,
              autoPlay: true,
              autoPlayInterval: const Duration(seconds: 5),
              autoPlayAnimationDuration: const Duration(milliseconds: 1000),
              enlargeCenterPage: true,
            ),
          )
        ],
      ),
    );
  }
}

List<Widget> projectsItems = const [
  ProjectTile(
    title: 'riskolobrzeg.pl',
    description: 'A portfolio page created with flutter',
    image: 'surgipet',
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
    image: 'surgipet',
    backgroundColor: AppColors.yellowColor,
  ),
  ProjectTile(
    title: 'Currency Rates App',
    description: 'A portfolio page created with flutter',
    image: 'surgipet',
    backgroundColor: AppColors.greenColor,
  ),
  ProjectTile(
    title: 'Portfolio',
    description: 'A portfolio page created with flutter',
    image: 'surgipet',
    backgroundColor: AppColors.darkGreenColor,
  ),
];

class ProjectTile extends StatelessWidget {
  const ProjectTile({
    super.key,
    required this.title,
    required this.image,
    required this.description,
    required this.backgroundColor,
  });

  final String title;
  final String image;
  final String description;
  final Color backgroundColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 300,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      child: Stack(
        children: [
          Padding(
            padding:
                const EdgeInsets.only(top: 20, left: 20, right: 40, bottom: 10),
            child: Align(
              alignment: Alignment.bottomRight,
              child: Transform(
                transform: Matrix4.rotationZ(-0.2),
                child: Image.asset(
                  '/images/projects/$image.png',
                  fit: BoxFit.contain,
                  height: 125,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: AppColors.h1.copyWith(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
                Text(
                  description,
                  style: AppColors.pLight.copyWith(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
