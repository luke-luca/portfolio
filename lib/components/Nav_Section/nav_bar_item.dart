import 'package:flutter/material.dart';
import 'package:portfolio/consts.dart';

class NavBarItem extends StatefulWidget {
  final String text;

  const NavBarItem({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  _NavBarItemState createState() => _NavBarItemState();
}

class _NavBarItemState extends State<NavBarItem> {
  Color selected = greenColor;
  Color notSelected = darkGreenColor;
  Color color = darkGreenColor;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (value) {
        setState(() {
          color = selected;
        });
      },
      onExit: (value) {
        setState(() {
          color = notSelected;
        });
      },
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          hoverColor: Colors.transparent,
          onTap: () {},
          child: Container(
            alignment: Alignment.centerLeft,
            padding:
                const EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
            child: Text(
              widget.text,
              style: menuItem,
            ),
          ),
        ),
      ),
    );
  }
}
