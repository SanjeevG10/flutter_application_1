import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Carousalpart extends StatelessWidget {
  const Carousalpart({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: CarouselSlider(
        items: [
          Container(
            height: 200,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                    "assets/images/dan-cristian-padure-mIyZDPhuyY0-unsplash.jpg"),
              ),
            ),
          ),
          Container(
            height: 200,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/images/fruits.jpg"),
              ),
            ),
          ),
          Container(
            height: 200,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                    "assets/images/dan-gold-4_jhDO54BYg-unsplash.jpg"),
              ),
            ),
          ),
          Container(
            height: 200,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/images/vegetables.jpg"),
              ),
            ),
          ),
        ],
        options: CarouselOptions(
            autoPlay: false,
            autoPlayCurve: Curves.linear,
            initialPage: 0,
            height: 200,
            enlargeCenterPage: true,
            enlargeFactor: .3),
      ),
    );
  }
}
