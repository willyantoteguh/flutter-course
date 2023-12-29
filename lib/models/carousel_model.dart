import 'package:flutter/material.dart';

final List<String> images = [
  "https://images.unsplash.com/photo-1524178232363-1fb2b075b655?q=80&w=1170&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
  "https://images.unsplash.com/photo-1531403009284-440f080d1e12?q=80&w=1170&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
  "https://images.unsplash.com/photo-1552664730-d307ca884978?q=80&w=1170&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
];

final List<String> descriptions = ["What is Lorem Ipsum?", "Why do we use it?", "Where does it come from?"];

List<Widget> generateImages() {
  return images
      .map(
        (e) => ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image.network(
            e,
            fit: BoxFit.cover,
          ),
        ),
      )
      .toList();
}
