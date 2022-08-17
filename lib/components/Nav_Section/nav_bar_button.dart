import 'package:flutter/material.dart';
import 'package:portfolio/consts.dart';

class NavBarButton extends StatefulWidget {
  final Function onPressed;

  const NavBarButton({
    Key? key,
    required this.onPressed,
  }) : super(key: key);

  @override
  _NavBarButtonState createState() => _NavBarButtonState();
}

class _NavBarButtonState extends State<NavBarButton> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48.0,
      width: 48.0,
      child: Material(
        color: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
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
            size: 36.0,
            color: darkGreenColor,
          ),
        ),
      ),
    );
  }
}
