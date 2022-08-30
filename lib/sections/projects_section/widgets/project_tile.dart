import 'package:flutter/material.dart';
import 'package:portfolio/consts.dart';
import 'package:portfolio/responsive.dart';

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
      width: (Responsive.isMobile(context))
          ? MediaQuery.of(context).size.width
          : 200,
      height: (Responsive.isMobile(context))
          ? MediaQuery.of(context).size.height * 0.35
          : 200,
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
                child: Positioned(
                  right: -20,
                  bottom: -20,
                  child: Image.asset(
                    '/projects_photos/$image.png',
                    fit: BoxFit.contain,
                    height: MediaQuery.of(context).size.height * 0.2,
                  ),
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
                  style: AppTextStyles.h2.copyWith(
                    color: Colors.white,
                  ),
                ),
                Text(
                  description,
                  style: AppTextStyles.pDark.copyWith(
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
