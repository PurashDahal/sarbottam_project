import 'package:carousel_slider/carousel_slider.dart';

import 'package:flutter/material.dart';

class BlogsandArticlesSlider extends StatelessWidget {
   const BlogsandArticlesSlider({super.key, required this.images});
final List<String> images;
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(

      options: CarouselOptions(height: 200.0,
      pageSnapping: false,
      autoPlay: true,
      padEnds: true,
      
      ),
      items: images.map((i) {

    return Builder(
      builder: (BuildContext context) {
        return ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image.asset(i));
      },
    );
      }).toList(),
    );
  }
}