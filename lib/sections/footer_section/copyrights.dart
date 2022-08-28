import 'package:flutter/material.dart';
import 'package:portfolio/consts.dart';

class Copyrights extends StatelessWidget {
  const Copyrights({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '©2022 lukaszmazurkiewicz.pl \n design inspired by Sajon',
            style: AppTextStyles.pLight,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
