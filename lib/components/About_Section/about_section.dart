import 'package:flutter/material.dart';
import 'package:portfolio/consts.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 450,
      padding: const EdgeInsets.symmetric(horizontal: 48.0),
      width: 1150,
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: 1150,
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  counterTile('Lorem', 'LoremIpsum Latatata', Icons.abc,
                      darkGreenColor),
                  counterTile(
                      'Lorem', 'LoremIpsum Latatata', Icons.abc, yellowColor),
                  counterTile(
                      'Lorem', 'LoremIpsum Latatata', Icons.abc, orangeColor),
                ],
              ),
            ),
            const VerticalDivider(
              color: orangeColor,
              thickness: 3,
              indent: 20,
              endIndent: 20,
              width: 50,
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'What do I do?',
                    style: h2,
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 5.0),
                    child: Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In ornare magna dolor, cursus facilisis sapien pulvinar ac. Curabitur hendrerit aliquam dui sed finibus. Vivamus vestibulum tincidunt sem a vestibulum. Morbi euismod mauris at dolor commodo, vitae elementum metus sodales. Fusce nulla magna, faucibus ac convallis nec, fermentum quis nunc. Maecenas iaculis enim vel mi vulputate porttitor. .',
                        textAlign: TextAlign.justify),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 5.0),
                    child: Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In ornare magna dolor, cursus facilisis sapien pulvinar ac. Curabitur hendrerit aliquam dui sed finibus. Vivamus vestibulum tincidunt sem a vestibulum. Morbi euismod mauris at dolor commodo, vitae elementum metus sodales. Fusce nulla magna, faucibus ac convallis nec, fermentum quis nunc. Maecenas iaculis enim vel mi vulputate porttitor. .',
                      textAlign: TextAlign.justify,
                    ),
                  ),
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
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget counterTile(String title, String subtitle, IconData icon, Color color) {
  return Container(
    padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 12),
    width: 300,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(12),
      color: Colors.white,
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.1),
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
          child: const Icon(
            Icons.favorite,
            color: Colors.white,
            size: 30,
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: pDark),
            Text(subtitle, style: pLight),
          ],
        ),
      ],
    ),
  );
}
