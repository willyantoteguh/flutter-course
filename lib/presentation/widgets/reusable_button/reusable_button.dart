import 'package:flutter/material.dart';

class ReusableButton extends StatelessWidget {
  final String title;

  const ReusableButton(this.title, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 15),
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 31, 229, 146),
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
