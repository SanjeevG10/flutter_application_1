import 'package:flutter/material.dart';

class Gridpart extends StatelessWidget {
  var names = [
    "vegetables",
    "fruits",
    "Exotic",
    "Fresh Cuts",
    "Nutrition charges",
    "Packed flavours",
  ];
  var images = [
    "assets/images/vegetables.jpg",
    "assets/images/fruits.jpg",
    "assets/images/dan-cristian-padure-mIyZDPhuyY0-unsplash.jpg",
    "assets/images/dan-gold-4_jhDO54BYg-unsplash.jpg",
    "assets/images/dan-cristian-padure-mIyZDPhuyY0-unsplash.jpg",
    "assets/images/dan-gold-4_jhDO54BYg-unsplash.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: GridView.builder(
          itemCount: 6,
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
          itemBuilder: (context, index) {
            return Card(
              child: Column(
                children: [
                  Container(
                    height: 80,
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10)),
                      image: DecorationImage(
                          fit: BoxFit.cover, image: AssetImage(images[index])),
                    ),
                  ),
                  SizedBox(
                    height: 13,
                  ),
                  Text(names[index]),
                ],
              ),
            );
          }),
    );
  }
}
