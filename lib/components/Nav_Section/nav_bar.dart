import 'package:flutter/material.dart';
import 'package:portfolio/components/nav_section/nav_bar_button.dart';
import 'package:portfolio/components/nav_section/nav_bar_item.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  double collapsableHeight = 0;
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Container(
      width: 1150,
      padding: const EdgeInsets.symmetric(horizontal: 48),
      child: Stack(
        children: [
          AnimatedContainer(
            margin: const EdgeInsets.only(top: 79),
            duration: const Duration(milliseconds: 375),
            curve: Curves.ease,
            height: (width < 800.0) ? collapsableHeight : 0.0,
            width: double.infinity,
            child: SingleChildScrollView(
              child: Column(
                children: navBarItems,
              ),
            ),
          ),
          SizedBox(
            height: 90,
            child: LayoutBuilder(
              builder: (context, constraints) {
                if (width < 800.0) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Image.asset('images/logo.png'),
                        iconSize: 36,
                        hoverColor: Colors.transparent,
                      ),
                      NavBarButton(
                        onPressed: () {
                          if (collapsableHeight == 0.0) {
                            setState(() {
                              collapsableHeight = 768.0;
                            });
                          } else if (collapsableHeight == 767.0) {
                            setState(() {
                              collapsableHeight = 0.0;
                            });
                          }
                        },
                      ),
                    ],
                  );
                } else {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () {},
                        hoverColor: Colors.transparent,
                        icon: Image.asset('images/logo.png'),
                        iconSize: 36,
                      ),
                      Row(
                        children: navBarItems,
                      ),
                      IconButton(
                        onPressed: () {},
                        hoverColor: Colors.transparent,
                        icon: Image.asset('images/github_icon.png'),
                        iconSize: 36,
                      ),
                    ],
                  );
                }
              },
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> navBarItems = [
    const NavBarItem(
      text: 'About',
    ),
    const NavBarItem(
      text: 'Stack',
    ),
    const NavBarItem(
      text: 'Projects',
    ),
    const NavBarItem(
      text: 'Contact',
    ),
  ];
}
