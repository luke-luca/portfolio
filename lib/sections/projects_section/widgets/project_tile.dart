import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio/consts.dart';
import 'package:portfolio/responsive.dart';

class ProjectTile extends StatelessWidget {
  const ProjectTile({
    super.key,
    required this.title,
    required this.image,
    required this.description,
    required this.backgroundColor,
    // required this.techList,
  });

  final String title;
  final String image;
  final String description;
  final Color backgroundColor;
  // final List<String> techList;
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
                // ListView.builder(
                //   itemCount: techList.length,
                //   shrinkWrap: true,
                //   itemBuilder: (context, index) {
                //     return ListTile(
                //       title: Text(
                //         techList[index],
                //         style: AppTextStyles.h3,
                //       ),
                //       leading: SvgPicture.asset(
                //         '/skills_icons/${techList[index]}-plain.svg',
                //         width: 16,
                //         height: 16,
                //         color: AppColors.darkGreenColor,
                //       ),
                //     );
                //   },
                // ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
