import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Carosal extends StatelessWidget {
 Carosal({super.key});

        final List<String> imageUrls = [
    'assets/images/carosal.png',
  ];

  @override
  Widget build(BuildContext context) {
    return 
         Center(
        child: CarouselSlider(
          options: CarouselOptions(
            height: 200.0,
            enlargeCenterPage: true,
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 7),
            autoPlayAnimationDuration: const Duration(milliseconds: 1000),
            autoPlayCurve: Curves.fastOutSlowIn,
            pauseAutoPlayOnTouch: true,
            viewportFraction: 1.0,
          ),
          items: imageUrls.map((url) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                  width: MediaQuery.of(context).size.width,
                  margin: const EdgeInsets.symmetric(horizontal: 5.0),
                  child: Image.asset(
                    url,
                    
                  ),
                );
              },
            );
          }).toList(),
        ),
      );
  }
}