import 'package:flutter/material.dart';
import 'package:portfolio/consts.dart';

class CounterTile extends StatelessWidget {
  const CounterTile({
    super.key,
    required this.title,
    required this.subtitle,
    required this.iconTile,
    required this.color,
  });

  final String title;
  final String subtitle;
  final IconData iconTile;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 12),
      width: double.infinity,
      height: 92,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: const Color.fromARGB(255, 209, 209, 209).withOpacity(0.1),
            blurRadius: 2,
            spreadRadius: 4,
            offset: Offset.fromDirection(1),
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: color,
            ),
            child: Icon(
              iconTile,
              color: Colors.white,
              size: 30,
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title, style: AppTextStyles.pDark),
              Text(subtitle, style: AppTextStyles.pLight),
            ],
          ),
        ],
      ),
    );
  }
}
