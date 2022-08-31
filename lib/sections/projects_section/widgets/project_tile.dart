import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hovering/hovering.dart';
import 'package:portfolio/consts.dart';
import 'package:portfolio/responsive.dart';
import 'package:blobs/blobs.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectTile extends StatelessWidget {
  const ProjectTile({
    super.key,
    required this.title,
    required this.image,
    required this.description,
    required this.backgroundColor,
    required this.techList,
    required this.linkTo,
  });

  final String title;
  final String image;
  final String description;
  final Color backgroundColor;
  final String linkTo;
  final List<String> techList;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: (Responsive.isMobile(context))
          ? MediaQuery.of(context).size.width
          : (Responsive.isTablet(context))
              ? MediaQuery.of(context).size.width * 0.4
              : 200,
      height: (Responsive.isMobile(context))
          ? MediaQuery.of(context).size.height * 0.55
          : (Responsive.isTablet(context))
              ? MediaQuery.of(context).size.width * 0.4
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
      child: HoverButton(
        onpressed: () {
          final _url = Uri.parse(linkTo);
          launchUrl(_url);
        },
        child: Stack(
          fit: StackFit.expand,
          children: [
            Positioned(
              left: 0,
              top: 0,
              child: Blob.random(
                size: 200,
                styles: BlobStyles(
                  color: Colors.white.withOpacity(0.1),
                ),
              ),
            ),
            Positioned(
              right: 40,
              bottom: 10,
              child: Transform(
                transform: Matrix4.rotationZ(-0.1),
                child: Image.asset(
                  '/projects_photos/$image.png',
                  width: (Responsive.isMobile(context))
                      ? 200
                      : (Responsive.isTablet(context))
                          ? MediaQuery.of(context).size.width * 0.3
                          : 250,
                  height: (Responsive.isMobile(context))
                      ? 150
                      : (Responsive.isTablet(context))
                          ? MediaQuery.of(context).size.width * 0.2
                          : 175,
                  fit: BoxFit.fitWidth,
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
                    style: AppTextStyles.h3.copyWith(
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    description,
                    style: AppTextStyles.pDark.copyWith(
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      for (var i = 0; i < techList.length; i++)
                        Padding(
                          padding: const EdgeInsets.only(right: 8),
                          child: SvgPicture.asset(
                            '/skills_icons/${techList[i]}-plain.svg',
                            width: 30,
                            height: 30,
                            color: Colors.white,
                          ),
                        ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
