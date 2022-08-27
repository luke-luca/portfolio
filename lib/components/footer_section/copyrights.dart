import 'package:flutter/material.dart';
import 'package:portfolio/consts.dart';

class Copyrights extends StatelessWidget {
  const Copyrights({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            '©2022 lukaszmazurkiewicz.pl \n design inspired by Sajon',
            style: AppColors.pLight,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
