import 'package:flutter/material.dart';
import 'package:portfolio/consts.dart';

class NavBarItem extends StatefulWidget {
  const NavBarItem({
    super.key,
    required this.text,
  });

  final String text;

  @override
  NavBarItemState createState() => NavBarItemState();
}

class NavBarItemState extends State<NavBarItem> {
  Color selected = AppColors.greenColor;
  Color notSelected = AppColors.darkGreenColor;
  Color color = AppColors.darkGreenColor;
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
            padding: const EdgeInsets.symmetric(
              vertical: 16,
              horizontal: 24,
            ),
            child: Text(
              widget.text,
              style: AppColors.menuItem,
            ),
          ),
        ),
      ),
    );
  }
}
