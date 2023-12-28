import 'package:flutter/material.dart';
import 'package:flutter_course/constants/app_color.dart';

class ReusableMobileButton extends StatelessWidget {
  final String title;

  const ReusableMobileButton({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: primaryColor,
          borderRadius: BorderRadius.circular(5)),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w800,
          color: Colors.white,
        ),
      ),
    );
  }
}
