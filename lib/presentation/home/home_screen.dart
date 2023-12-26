import 'package:flutter/material.dart';
import '../widgets/course_detail/course_detail.dart';
import '../widgets/reusable_button/reusable_button.dart';

import '../widgets/centered_screen/centered_screen.dart';
import '../widgets/navigation_bar/navigation_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: CenteredScreen(
        child: Column(
          children: [
            ReusableNavigationBar(),
            Expanded(
              child: Row(
                children: [
                  CourseDetails(),
                  Expanded(
                    child: Center(
                      child: ReusableButton("Join Course"),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
