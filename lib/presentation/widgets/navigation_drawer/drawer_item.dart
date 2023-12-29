import 'package:flutter/material.dart';

import '../navbar_item/navbar_item.dart';

class DrawerItem extends StatelessWidget {
  final String title;
  final IconData icon;
  final String navigationPath;

  const DrawerItem({super.key, required this.title, required this.icon, required this.navigationPath});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, top: 60),
      child: Row(
        children: [Icon(icon), const SizedBox(width: 30), NavbarItem(title, navigationPath)],
      ),
    );
  }
}
