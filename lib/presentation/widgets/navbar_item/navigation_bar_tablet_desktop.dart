import 'package:flutter/material.dart';
import 'package:flutter_course/routing/app_route_name.dart';

import 'navbar_item.dart';
import '../navigation_bar/navbar_logo.dart';

class NavigationBarTabletDesktop extends StatelessWidget {
  const NavigationBarTabletDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          NavBarLogo(),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              NavbarItem("Episodes", EpisodesRoute),
              SizedBox(
                width: 60,
              ),
              NavbarItem("About", AboutRoute),
            ],
          )
        ],
      ),
    );
  }
}
