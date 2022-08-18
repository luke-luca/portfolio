import 'package:flutter/material.dart';
import 'package:portfolio/consts.dart';

class FooterSection extends StatelessWidget {
  const FooterSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      width: 1150,
      padding: const EdgeInsets.symmetric(horizontal: 48),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Let’s talk toghtether',
                    style: AppColors.h2,
                  ),
                  Text(
                    'Start by saying hi!',
                    style: AppColors.h2,
                  ),
                  Text('Check my CV', style: AppColors.h2),
                  IconButton(
                    onPressed: () {},
                    hoverColor: Colors.transparent,
                    icon: Image.asset('images/github_icon.png'),
                    iconSize: 36,
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Menu', style: AppColors.h2),
                  const Divider(
                    color: AppColors.orangeColor,
                    thickness: 10,
                    indent: 20,
                    endIndent: 20,
                    height: 20,
                  ),
                  Text('About', style: AppColors.pLight),
                  Text('Skills', style: AppColors.pLight),
                  Text('Projects', style: AppColors.pLight),
                  Text('Contact', style: AppColors.pLight),
                ],
              ),
            ],
          ),
          Divider(
            color: Colors.black.withOpacity(0.1),
            thickness: 1,
          ),
          Text('© 2020', style: AppColors.pLight),
        ],
      ),
    );
  }
}
