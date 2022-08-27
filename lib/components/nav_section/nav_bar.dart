import 'package:flutter/material.dart';
import 'package:portfolio/consts.dart';

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
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Stack(
        children: [
          AnimatedContainer(
            margin: const EdgeInsets.only(top: 79),
            color: Colors.white,
            duration: const Duration(milliseconds: 375),
            curve: Curves.ease,
            height: (width < 800.0) ? collapsableHeight : 0.0,
            width: double.infinity,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: navBarItems,
              ),
            ),
          ),
          SizedBox(
            height: 90,
            child: LayoutBuilder(
              builder: (context, constraints) {
                if (width < 800.0) {
                  return Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Image.asset('images/logo.png'),
                            iconSize: 36,
                            hoverColor: Colors.transparent,
                          ),
                          NavBarButton(
                            isOpen: () {
                              if (collapsableHeight == 0.0) {
                                setState(() {
                                  collapsableHeight = 240.0;
                                });
                              } else if (collapsableHeight == 240.0) {
                                setState(() {
                                  collapsableHeight = 0.0;
                                });
                              }
                            },
                          ),
                        ],
                      ),
                      const Divider(
                        color: Color.fromARGB(255, 238, 238, 236),
                        thickness: 1,
                        indent: 10,
                        endIndent: 10,
                        height: 10,
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
  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Text(
          widget.text,
          style: AppColors.menuItem,
        ),
      ),
      onPressed: () {},
    );
  }
}

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
