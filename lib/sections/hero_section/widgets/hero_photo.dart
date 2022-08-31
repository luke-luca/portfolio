import 'package:flutter/material.dart';
import 'package:portfolio/responsive.dart';

class HeroPhoto extends StatelessWidget {
  const HeroPhoto({super.key});

  @override
  Widget build(BuildContext context) {
    return Responsive(
      mobile: SizedBox(
        height: 320,
        child: DecoratedBox(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('/images/background_photo.png'),
              fit: BoxFit.contain,
              alignment: Alignment.bottomCenter,
            ),
          ),
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Image.asset(
              'images/me.png',
              fit: BoxFit.contain,
            ),
          ),
        ),
      ),
      tablet: SizedBox(
        height: 500,
        child: DecoratedBox(
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
        ),
      ),
      desktop: SizedBox(
        height: 600,
        child: DecoratedBox(
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
        ),
      ),
    );
  }
}
