import 'package:flutter/material.dart';
import '../navbar_item/navigation_bar_mobile.dart';
import '../navbar_item/navigation_bar_tablet_desktop.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ReusableNavigationBar extends StatelessWidget {
  const ReusableNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (context) => const NavigationBarMobile(),
      tablet: (context) => const NavigationBarTabletDesktop(),
    );
  }
}
