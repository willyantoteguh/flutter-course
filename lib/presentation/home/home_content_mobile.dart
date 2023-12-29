import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import '../../models/carousel_model.dart';
import '../widgets/course_detail/course_detail.dart';
import '../widgets/reusable_button/reusable_button.dart';

class HomeContentMobile extends StatefulWidget {
  const HomeContentMobile({super.key});

  @override
  State<HomeContentMobile> createState() => _HomeContentMobileState();
}

class _HomeContentMobileState extends State<HomeContentMobile> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CourseDetails(),
          const SizedBox(height: 50),
          Container(
            width: double.infinity,
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
                          fontSize: MediaQuery.of(context).size.width / 40),
                    ),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 50),
          const ReusableButton("Join Course")
        ],
      ),
    );
  }
}
