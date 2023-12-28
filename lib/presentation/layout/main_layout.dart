import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../locator/locator.dart';
import '../../routing/app_route_name.dart';
import '../../routing/app_router.dart';
import '../../services/navigation_service.dart';
import '../widgets/centered_screen/centered_screen.dart';
import '../widgets/navigation_bar/navigation_bar.dart';
import '../widgets/navigation_drawer/navigation_drawer.dart';

class MainLayout extends StatelessWidget {
  const MainLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, size) {
      return Scaffold(
        drawer: size.isMobile ? const NavigationDrawerMobile() : null,
        backgroundColor: Colors.white,
        body:  CenteredScreen(
          child: Column(
            children: [
              const ReusableNavigationBar(),
              Expanded(child: Navigator(
                key: locator<NavigationService>().navigatorKey,
                onGenerateRoute: generateRoute,
                initialRoute: HomeRoute,
              ))
            ],
          ),
        ),
      );
    });
  }
}
