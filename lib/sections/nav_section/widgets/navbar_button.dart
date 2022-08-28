import 'package:flutter/material.dart';
import 'package:portfolio/consts.dart';

class NavBarButton extends StatefulWidget {
  const NavBarButton({
    super.key,
    required this.isOpen,
  });
  final VoidCallback isOpen;

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
        color: Colors.white,
        shape: const CircleBorder(),
        shadowColor: Colors.black.withOpacity(0.5),
        child: InkWell(
          splashColor: Colors.white60,
          hoverColor: Colors.transparent,
          onTap: () {
            setState(() {
              widget.isOpen();
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
