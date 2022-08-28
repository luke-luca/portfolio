import 'package:flutter/material.dart';
import 'package:portfolio/consts.dart';
import 'package:portfolio/sections/nav_section/widgets/navbar_button.dart';
import 'package:portfolio/sections/nav_section/widgets/navbar_list.dart';
import 'package:portfolio/sections/widgets/custom_divider.dart';

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
      padding: (width < AppConstsMobile.isMobile)
          ? AppConstsMobile.defaultPaddingNavBar
          : (width < AppConstsTablet.isTablet)
              ? AppConstsTablet.defaultPaddingNavBar
              : AppConstsDesktop.defaultPaddingNavBar,
      child: Stack(
        children: [
          AnimatedContainer(
            margin: const EdgeInsets.only(top: 80),
            duration: const Duration(milliseconds: 375),
            curve: Curves.ease,
            height:
                (width < AppConstsTablet.isTablet) ? collapsableHeight : 0.0,
            width: double.infinity,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: navBarItems,
              ),
            ),
          ),
          LayoutBuilder(
            builder: (context, constraints) {
              if (width < AppConstsTablet.isTablet) {
                return Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Image.asset('logo/logo.png'),
                          iconSize: 36,
                          hoverColor: Colors.transparent,
                          splashColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                        ),
                        NavBarButton(
                          isOpen: () {
                            if (collapsableHeight == 0.0) {
                              setState(() {
                                collapsableHeight = 200.0;
                              });
                            } else if (collapsableHeight == 200.0) {
                              setState(() {
                                collapsableHeight = 0.0;
                              });
                            }
                          },
                        ),
                      ],
                    ),
                    const CustomDivider(),
                  ],
                );
              } else {
                return Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          onPressed: () {},
                          hoverColor: Colors.transparent,
                          splashColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          icon: Image.asset('logo/logo.png'),
                          iconSize: 36,
                        ),
                        Row(
                          children: navBarItems,
                        ),
                        Row(
                          children: [
                            IconButton(
                              onPressed: () {},
                              hoverColor: Colors.transparent,
                              splashColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              icon: Image.asset('icons/github_icon.png'),
                              iconSize: 36,
                            ),
                            IconButton(
                              onPressed: () {},
                              hoverColor: Colors.transparent,
                              splashColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              icon: Image.asset('icons/linkedin_icon.png'),
                              iconSize: 36,
                            ),
                          ],
                        ),
                      ],
                    ),
                    const CustomDivider(),
                  ],
                );
              }
            },
          ),
        ],
      ),
    );
  }
}
