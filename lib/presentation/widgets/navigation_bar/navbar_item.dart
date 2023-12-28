import 'package:flutter/material.dart';

import '../../../locator/locator.dart';
import '../../../services/navigation_service.dart';

class NavbarItem extends StatelessWidget {
  final String title;
  final String navigationPath;

  const NavbarItem(this.title, this.navigationPath, {super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {

        locator<NavigationService>().navigateTo(navigationPath);
      },
      child: Text(
        title,
        style: const TextStyle(fontSize: 18),
      ),
    );
  }
}