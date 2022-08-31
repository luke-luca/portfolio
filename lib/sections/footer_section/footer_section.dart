import 'dart:html';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/consts.dart';
import 'package:portfolio/responsive.dart';
import 'package:portfolio/sections/widgets/custom_divider.dart';
import 'package:url_launcher/url_launcher.dart';

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
                children: const [
                  FooterInfo(),
                ],
              ),
              const CustomDivider(),
              const CopyRights(),
            ],
          ),
        ),
        desktop: Expanded(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  FooterInfo(),
                  DecotarionFooter(),
                ],
              ),
              const CustomDivider(),
              const CopyRights(),
            ],
          ),
        ),
      ),
    );
  }
}

class FooterInfo extends StatefulWidget {
  const FooterInfo({
    super.key,
  });

  @override
  State<FooterInfo> createState() => _FooterInfoState();
}

class _FooterInfoState extends State<FooterInfo> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
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
                text: 'E-mail me at\n',
                style: AppTextStyles.h2,
                children: [
                  TextSpan(
                    text: 'kontakt@lukaszmazurkiewicz.pl',
                    style: AppTextStyles.h2.copyWith(
                      color: AppColors.orangeColor,
                      decoration: TextDecoration.underline,
                      fontSize: 22,
                    ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        final emailLaunchUri = Uri(
                          scheme: 'mailto',
                          path: 'kontakt@lukaszmazurkiewicz.pl',
                        );
                        launchUrl(emailLaunchUri);
                      },
                  ),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(height: 10),
        Row(
          children: [
            IconButton(
              onPressed: () {
                final _url = Uri.parse(AppConsts.appAuthorGithub);
                launchUrl(_url);
              },
              hoverColor: Colors.transparent,
              icon: Image.asset('icons/github_icon.png'),
              iconSize: 36,
            ),
            IconButton(
              onPressed: () {
                final _url = Uri.parse(AppConsts.appAuthorLinkedIn);
                launchUrl(_url);
              },
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
      width: (!Responsive.isDesktop(context))
          ? MediaQuery.of(context).size.width * 0.2
          : 400,
      height: (!Responsive.isDesktop(context))
          ? MediaQuery.of(context).size.height * 0.2
          : 400,
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
            '©2022 lukaszmazurkiewicz.pl \nAll Rights Reserved',
            style: AppTextStyles.pLight,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
