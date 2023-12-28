import 'package:flutter/material.dart';

import '../widgets/course_detail/course_detail.dart';
import '../widgets/reusable_button/reusable_button.dart';

class HomeContentDesktop extends StatelessWidget {
  const HomeContentDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        CourseDetails(),
        Expanded(
          child: Center(
            child: ReusableButton("Join Course"),
          ),
        )
      ],
    );
  }
}
