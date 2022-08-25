import 'package:flutter/material.dart';
import 'package:portfolio/components/Hero_Section/score_panel.dart';
import 'package:portfolio/consts.dart';

class HeroSection extends StatefulWidget {
  const HeroSection({super.key});

  @override
  State<HeroSection> createState() => _HeroSectionState();
}

class _HeroSectionState extends State<HeroSection> {
  late ScrollController _controller;
  double pixels = 0;

  @override
  void initState() {
    super.initState();
    _controller = ScrollController();
    _controller.addListener(() {
      setState(() {
        pixels = _controller.position.pixels;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 64, left: 48, right: 48, bottom: 0),
      height: MediaQuery.of(context).size.height,
      width: 1150,
      child: Column(
        children: [
          Row(
            children: const [
              Expanded(child: HeroLeft()),
              Expanded(flex: 2, child: HeroRight())
            ],
          ),
          const ScorePanel(),
        ],
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
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Hi, There!\nI'm Lukas",
          style: AppColors.h1,
        ),
        Text(
          'aspiring web and mobile\ndeveloper',
          style: AppColors.h2,
        ),
        const SizedBox(height: 20),
        Text(
          'kontakt@lukaszmazurkiewicz.pl',
          style: AppColors.pAccent,
        ),
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            primary: AppColors.yellowColor,
            elevation: 0,
            padding: const EdgeInsets.only(
              top: 18,
              bottom: 18,
              left: 24,
              right: 24,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
          ),
          child: Text('Contact me', style: AppColors.buttonText),
        )
      ],
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
          fit: BoxFit.fitHeight,
        ),
      ),
      child: Align(
        alignment: Alignment.bottomRight,
        child: Image.asset(
          'images/me.png',
          height: 450,
        ),
      ),
    );
  }
}
