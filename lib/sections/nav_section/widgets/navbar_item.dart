import 'package:flutter/material.dart';
import 'package:portfolio/consts.dart';

class NavBarItem extends StatefulWidget {
  const NavBarItem({
    super.key,
    required this.text,
    required this.link,
  });

  final String text;
  final String link;

  @override
  NavBarItemState createState() => NavBarItemState();
}

class NavBarItemState extends State<NavBarItem> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        primary: Colors.white,
        backgroundColor: Colors.transparent,
        onSurface: Colors.transparent,
        shadowColor: Colors.transparent,
        elevation: 0,
      ),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Text(
          widget.text,
          style: AppTextStyles.menuItem,
        ),
      ),
      onPressed: () {},
    );
  }
}
