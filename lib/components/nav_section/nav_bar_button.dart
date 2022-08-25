import 'package:flutter/material.dart';
import 'package:portfolio/consts.dart';

class NavBarButton extends StatefulWidget {
  const NavBarButton({
    super.key,
    required this.onPressed,
  });

  final VoidCallback onPressed;

  @override
  NavBarButtonState createState() => NavBarButtonState();
}

class NavBarButtonState extends State<NavBarButton> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      width: 48,
      child: Material(
        color: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        child: InkWell(
          splashColor: Colors.white60,
          hoverColor: Colors.transparent,
          onTap: () {
            setState(() {
              widget.onPressed();
            });
          },
          child: const Icon(
            Icons.menu_rounded,
            size: 36,
            color: AppColors.darkGreenColor,
          ),
        ),
      ),
    );
  }
}
