import 'package:dashed_circle/dashed_circle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dash/flutter_dash.dart';
import 'package:portfolio/consts.dart';

class SkillDecoration extends StatefulWidget {
  const SkillDecoration({super.key, required this.dotColor});
  final Color dotColor;
  @override
  State<SkillDecoration> createState() => _SkillDecorationState();
}

class _SkillDecorationState extends State<SkillDecoration> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          DashedCircle(
            color: AppColors.darkGreenColor,
            child: Padding(
              padding: const EdgeInsets.all(6),
              child: Container(
                height: 16,
                width: 16,
                decoration: BoxDecoration(
                  color: widget.dotColor,
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
            ),
          ),
          const Dash(
            direction: Axis.vertical,
            length: 260,
            dashLength: 8,
            dashColor: AppColors.darkGreenColor,
            dashThickness: 2,
          ),
          DashedCircle(
            color: AppColors.darkGreenColor,
            child: Padding(
              padding: const EdgeInsets.all(6),
              child: Container(
                height: 16,
                width: 16,
                decoration: BoxDecoration(
                  color: widget.dotColor,
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
