import 'package:flutter/material.dart';

import '../../../routing/app_route_name.dart';
import 'drawer_item.dart';
import 'navigation_drawer_header.dart';

class NavigationDrawerMobile extends StatelessWidget {
  const NavigationDrawerMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      decoration: const BoxDecoration(
          color: Colors.white,
          boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 16)]),
      child: const Column(
        children: <Widget>[
          NavigationDrawerHeader(),
          DrawerItem(title: 'Episodes', icon: Icons.videocam, navigationPath: EpisodesRoute),
          DrawerItem(title: 'About', icon: Icons.help, navigationPath: AboutRoute),
        ],
      ),
    );
  }
}
