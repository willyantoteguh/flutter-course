import 'package:flutter/material.dart';
import 'package:flutter_course/constants/app_color.dart';

class ReusableTabletDesktopButton extends StatelessWidget {
  final String title;

  const ReusableTabletDesktopButton({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 15),
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