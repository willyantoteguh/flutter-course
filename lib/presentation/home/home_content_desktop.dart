import 'package:flutter/material.dart';

import '../../models/carousel_model.dart';
import '../widgets/course_detail/course_detail.dart';
import '../widgets/reusable_button/reusable_button.dart';

import 'package:carousel_slider/carousel_slider.dart';
class HomeContentDesktop extends StatefulWidget {
  const HomeContentDesktop({super.key});

  @override
  State<HomeContentDesktop> createState() => _HomeContentDesktopState();
}

class _HomeContentDesktopState extends State<HomeContentDesktop> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CourseDetails(),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Spacer(),
              Container(
                width: 800,
                color: Colors.white,
                // padding: EdgeInsets.only(),
                child: Stack(
                  children: [
                    CarouselSlider(
                        items: generateImages(),
                        options: CarouselOptions(
                            enlargeCenterPage: true,
                            autoPlay: true,
                            aspectRatio: 18 / 8,
                            onPageChanged: (index, _) {
                              setState(() {
                                currentIndex = index;
                              });
                            })),
                    AspectRatio(
                      aspectRatio: 18 / 8,
                      child: Center(
                        child: Text(
                          descriptions[currentIndex],
                          style: TextStyle(
                              decoration: TextDecoration.none,
                              color: Colors.white,
                              fontSize: MediaQuery.of(context).size.width / 60),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const Spacer(),
              const AspectRatio(
                aspectRatio: 18/8,
                child: Center(child: ReusableButton("Join Course"))),
            ],
          ),
        )
      ],
    );
  }
}
