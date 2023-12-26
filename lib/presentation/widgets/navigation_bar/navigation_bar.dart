import 'package:flutter/material.dart';

class ReusableNavigationBar extends StatelessWidget {
  const ReusableNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: 80,
            width: 150,
            child: Image.asset('assets/images/logo.png'),
          ),
          const Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              NavbarItem("Dashboard"),
              SizedBox(width: 60,),
              NavbarItem("About"),
            ],
          )
        ],
      ),
    );
  }
}

class NavbarItem extends StatelessWidget {
  final String title;
  const NavbarItem(this.title, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(fontSize: 18),
    );
  }
}
