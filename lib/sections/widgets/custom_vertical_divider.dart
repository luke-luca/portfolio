import 'package:flutter/material.dart';
import 'package:portfolio/consts.dart';

class CustomVerticalDivider extends StatelessWidget {
  const CustomVerticalDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return const VerticalDivider(
      color: AppColors.dividerColor,
      thickness: 1,
      indent: 2,
      endIndent: 2,
      width: 96,
    );
  }
}
