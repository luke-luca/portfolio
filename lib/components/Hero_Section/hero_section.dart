import 'package:flutter/material.dart';
import 'package:portfolio/consts.dart';

class HeroSection extends StatefulWidget {
  const HeroSection({Key? key}) : super(key: key);

  @override
  State<HeroSection> createState() => _HeroSectionState();
}

class _HeroSectionState extends State<HeroSection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 64.0, horizontal: 48.0),
      width: 1150,
      child: Row(
        children: const [
          Expanded(flex: 1, child: HeroLeft()),
          Expanded(flex: 2, child: HeroRight())
        ],
      ),
    );
  }
}

class HeroLeft extends StatelessWidget {
  const HeroLeft({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Hi, There!\nI'm Lukas",
          style: h1,
        ),
        Text(
          "aspiring web and mobile\ndeveloper",
          style: h2,
        ),
        const SizedBox(height: 20.0),
        Text(
          "kontakt@lukaszmazurkiewicz.pl",
          style: pAccent,
        ),
        const SizedBox(height: 20.0),
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            primary: yellowColor,
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
          child: Text("Contact me", style: buttonText),
        )
      ],
    );
  }
}

class HeroRight extends StatelessWidget {
  const HeroRight({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("/images/background_photo.png"),
          fit: BoxFit.fitHeight,
        ),
      ),
      child: Align(
        alignment: Alignment.bottomRight,
        child: (Image.asset(
          'images/me.png',
          height: 450,
        )),
      ),
    );
  }
}
