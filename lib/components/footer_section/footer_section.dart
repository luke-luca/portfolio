import 'package:flutter/material.dart';
import 'package:portfolio/consts.dart';

class FooterSection extends StatelessWidget {
  const FooterSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 50, left: 16, right: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Let’s talk and work together!',
            style: AppColors.h1.copyWith(fontSize: 22),
          ),
          const SizedBox(height: 10),
          Text('Interested?',
              style: AppColors.h1.copyWith(
                fontSize: 22,
              )),
          const SizedBox(height: 10),
          RichText(
            text: TextSpan(
              text: 'Checkout my ',
              style: AppColors.h1.copyWith(
                fontSize: 16,
                color: Colors.black,
              ),
              children: [
                TextSpan(
                  text: 'resume',
                  style: AppColors.h1.copyWith(
                    color: AppColors.orangeColor,
                    fontSize: 18,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ],
            ),
          ),
          RichText(
            text: TextSpan(
              text: 'E-mail me at \n',
              style: AppColors.h1.copyWith(
                fontSize: 16,
                color: Colors.black,
              ),
              children: [
                TextSpan(
                  text: 'kontakt@lukaszmazurkiewicz.pl',
                  style: AppColors.h1.copyWith(
                    color: AppColors.orangeColor,
                    fontSize: 18,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ],
            ),
          ),
          Text('or',
              style: AppColors.h1.copyWith(
                fontSize: 16,
              )),
          RichText(
            text: TextSpan(
              text: 'Write to me on ',
              style: AppColors.h1.copyWith(
                fontSize: 16,
                color: Colors.black,
              ),
              children: [
                TextSpan(
                  text: 'linkedin',
                  style: AppColors.h1.copyWith(
                    color: AppColors.orangeColor,
                    fontSize: 18,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: [
              IconButton(
                onPressed: () {},
                hoverColor: Colors.transparent,
                icon: Image.asset('images/github_icon.png'),
                iconSize: 36,
              ),
              IconButton(
                onPressed: () {},
                hoverColor: Colors.transparent,
                icon: Image.asset('images/github_icon.png'),
                iconSize: 36,
              ),
            ],
          ),
          const Divider(
            color: Color.fromARGB(255, 238, 238, 236),
            thickness: 1,
            indent: 2,
            endIndent: 2,
            height: 10,
          ),
        ],
      ),
    );
  }
}
