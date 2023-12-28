import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'reusable_mobile_button.dart';
import 'reusable_tablet_desktop_button.dart';

class ReusableButton extends StatelessWidget {
  final String title;

  const ReusableButton(this.title, {super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      desktop: (context) => ReusableTabletDesktopButton(title: title),
      tablet: (context) => ReusableTabletDesktopButton(title: title),
      mobile: (context) => ReusableMobileButton(title: title),
    );
  }
}
