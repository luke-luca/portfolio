import 'package:flutter/material.dart';
import 'package:portfolio/consts.dart';
import 'package:url_launcher/url_launcher.dart';

class MainButton extends StatelessWidget {
  const MainButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        final _url = Uri.parse(AppConsts.appAuthorLinkedIn);
        launchUrl(_url);
      },
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
      child: Text('Contact me', style: AppTextStyles.buttonText),
    );
  }
}
