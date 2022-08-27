import 'package:flutter/material.dart';
import 'package:portfolio/consts.dart';

class MainButton extends StatelessWidget {
  const MainButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
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
    );
  }
}
