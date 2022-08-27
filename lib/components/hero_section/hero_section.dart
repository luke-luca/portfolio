import 'package:flutter/material.dart';
import 'package:portfolio/components/elements/main_button.dart';
import 'package:portfolio/consts.dart';

class HeroSection extends StatefulWidget {
  const HeroSection({super.key});

  @override
  State<HeroSection> createState() => _HeroSectionState();
}

class _HeroSectionState extends State<HeroSection> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return SizedBox(
      width: 1150,
      child: LayoutBuilder(
        builder: (context, constraints) {
          if (width < 800) {
            return Column(children: const [HeroLeft(), HeroRight()]);
          } else {
            return Expanded(
              child: Row(
                children: const [
                  Expanded(flex: 1, child: HeroLeft()),
                  Expanded(flex: 2, child: HeroRight()),
                ],
              ),
            );
          }
        },
      ),
    );
  }
}

class HeroLeft extends StatelessWidget {
  const HeroLeft({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Hi, There!\nI'm Lukas",
          style: AppColors.h1.copyWith(
            fontSize: 48,
          ),
        ),
        Text(
          'aspiring web and mobile developer',
          style: AppColors.h2.copyWith(
            fontSize: 36,
          ),
        ),
        const SizedBox(height: 10),
        Text(
          'kontakt@lukaszmazurkiewicz.pl',
          style: AppColors.pAccent.copyWith(
            fontSize: 16,
          ),
        ),
        const SizedBox(height: 30),
      ],
    );
  }
}

class SlideButton extends StatelessWidget {
  const SlideButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      width: 48,
      child: Material(
        color: Colors.white,
        shape: const CircleBorder(),
        shadowColor: Colors.black.withOpacity(0.5),
        child: InkWell(
          splashColor: Colors.white60,
          hoverColor: Colors.transparent,
          child: const Icon(
            Icons.arrow_downward_rounded,
            size: 36,
            color: AppColors.darkGreenColor,
          ),
        ),
      ),
    );
  }
}

class HeroRight extends StatelessWidget {
  const HeroRight({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('/images/background_photo.png'),
            fit: BoxFit.contain,
            alignment: Alignment.centerLeft),
      ),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Image.asset(
          'images/me.png',
          fit: BoxFit.contain,
          height: MediaQuery.of(context).size.height * 0.4,
        ),
      ),
    );
  }
}
