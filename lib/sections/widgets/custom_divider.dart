import 'package:flutter/material.dart';
import 'package:portfolio/consts.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return const Divider(
      color: AppColors.dividerColor,
      thickness: 1,
      indent: 2,
      endIndent: 2,
      height: 32,
    );
  }
}
