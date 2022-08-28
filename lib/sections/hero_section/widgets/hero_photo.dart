import 'package:flutter/material.dart';
import 'package:portfolio/consts.dart';

class HeroPhoto extends StatelessWidget {
  const HeroPhoto({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return DecoratedBox(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('/images/background_photo.png'),
          fit: BoxFit.contain,
          alignment: Alignment.centerRight,
        ),
      ),
      child: Align(
        alignment: Alignment.bottomRight,
        child: Image.asset(
          'images/me.png',
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
