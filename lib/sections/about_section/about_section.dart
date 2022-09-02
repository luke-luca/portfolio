import 'package:flutter/material.dart';

import 'package:portfolio/consts.dart';
import 'package:portfolio/responsive.dart';
import 'package:portfolio/sections/about_section/widgets/about_description.dart';
import 'package:portfolio/sections/about_section/widgets/about_elements.dart';
import 'package:portfolio/sections/widgets/custom_divider.dart';
import 'package:portfolio/sections/widgets/custom_vertical_divider.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Container(
      width: double.infinity,
      color: Colors.white,
      child: Center(
        child: Padding(
          padding: (width < AppConstsMobile.isMobile)
              ? AppConstsMobile.defaultPadding
              : (width < AppConstsTablet.isTablet)
                  ? AppConstsTablet.defaultPadding
                  : AppConstsDesktop.defaultPadding,
          child: SizedBox(
            width: 1150,
            child: Responsive(
              mobile: Column(
                children: const [
                  AboutElements(),
                  CustomDivider(),
                  AboutDescription(),
                ],
              ),
              tablet: IntrinsicHeight(
                child: Row(
                  children: const [
                    AboutElements(),
                    CustomVerticalDivider(),
                    Expanded(child: AboutDescription()),
                  ],
                ),
              ),
              desktop: IntrinsicHeight(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    AboutElements(),
                    CustomVerticalDivider(),
                    Expanded(child: AboutDescription()),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
