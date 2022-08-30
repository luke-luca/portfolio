import 'package:flutter/material.dart';
import 'package:portfolio/consts.dart';
import 'package:portfolio/responsive.dart';
import 'package:portfolio/sections/widgets/custom_divider.dart';

class FooterSection extends StatelessWidget {
  const FooterSection({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Padding(
      padding: (width < AppConstsMobile.isMobile)
          ? AppConstsMobile.defaultPadding
          : (width < AppConstsTablet.isTablet)
              ? AppConstsTablet.defaultPadding
              : AppConstsDesktop.defaultPadding,
      child: Responsive(
        mobile: Expanded(
          child: Column(
            children: const [FooterInfo(), CustomDivider(), CopyRights()],
          ),
        ),
        tablet: Expanded(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const FooterInfo(),
                  DecotarionFooter(),
                ],
              ),
              CustomDivider(),
              const CopyRights(),
            ],
          ),
        ),
        desktop: Expanded(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const FooterInfo(),
                  DecotarionFooter(),
                ],
              ),
              CustomDivider(),
              const CopyRights(),
            ],
          ),
        ),
      ),
    );
  }
}

class FooterInfo extends StatelessWidget {
  const FooterInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Let’s talk and work together!',
          style: AppTextStyles.h2,
        ),
        const SizedBox(height: 10),
        Text(
          'Interested?',
          style: AppTextStyles.h2,
        ),
        const SizedBox(height: 10),
        RichText(
          text: TextSpan(
            text: 'Checkout my ',
            style: AppTextStyles.h3,
            children: [
              TextSpan(
                text: 'resume',
                style: AppTextStyles.h3.copyWith(
                  color: AppColors.orangeColor,
                  decoration: TextDecoration.underline,
                ),
              ),
            ],
          ),
        ),
        RichText(
          text: TextSpan(
            text: 'E-mail me at ',
            style: AppTextStyles.h3,
            children: [
              TextSpan(
                text: 'kontakt@lukaszmazurkiewicz.pl',
                style: AppTextStyles.h3.copyWith(
                  color: AppColors.orangeColor,
                  decoration: TextDecoration.underline,
                ),
              ),
            ],
          ),
        ),
        Text(
          'or',
          style: AppTextStyles.h3,
        ),
        RichText(
          text: TextSpan(
            text: 'Write to me on ',
            style: AppTextStyles.h3,
            children: [
              TextSpan(
                text: 'linkedin',
                style: AppTextStyles.h3.copyWith(
                  color: AppColors.orangeColor,
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
              icon: Image.asset('icons/github_icon.png'),
              iconSize: 36,
            ),
            IconButton(
              onPressed: () {},
              hoverColor: Colors.transparent,
              icon: Image.asset('icons/linkedin_icon.png'),
              iconSize: 36,
            ),
          ],
        ),
      ],
    );
  }
}

class DecotarionFooter extends StatelessWidget {
  const DecotarionFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 400,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('/images/background_photo-footer.png'),
          fit: BoxFit.contain,
          alignment: Alignment.bottomRight,
        ),
      ),
    );
  }
}

class CopyRights extends StatelessWidget {
  const CopyRights({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '©2022 lukaszmazurkiewicz.pl',
            style: AppTextStyles.pLight,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
