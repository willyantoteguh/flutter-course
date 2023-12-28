import 'package:flutter/material.dart';
import '../widgets/course_detail/course_detail.dart';
import '../widgets/reusable_button/reusable_button.dart';

class HomeContentMobile extends StatelessWidget {
  const HomeContentMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CourseDetails(),
        SizedBox(height: 100),
        ReusableButton("Join Course")
      ],
    );
  }
}