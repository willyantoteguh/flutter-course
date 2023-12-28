import 'package:flutter/material.dart';

import '../presentation/about/about_screen.dart';
import '../presentation/episodes/episodes_screen.dart';
import '../presentation/home/home_screen.dart';
import 'app_route_name.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case HomeRoute:
      return _getPageRoute(const HomeScreen());
    case EpisodesRoute:
      return _getPageRoute(const EpisodesScreen());
    case AboutRoute:
      return _getPageRoute(const AboutScreen());
    default:
      return _getPageRoute(const HomeScreen());
  }
}

PageRoute _getPageRoute(Widget child) {
  return _FadeRoute(child: child);
}

class _FadeRoute extends PageRouteBuilder {
  final Widget child;

  _FadeRoute({required this.child})
      : super(
          pageBuilder: (BuildContext context, Animation<double> animation,
                  Animation<double> secondAnimation) =>
              child,
          transitionsBuilder: (BuildContext context,
                  Animation<double> animation,
                  Animation<double> secondAnimation,
                  Widget child) =>
              FadeTransition(
            opacity: animation,
            child: child,
          ),
        );
}
