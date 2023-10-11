import 'package:flutter/material.dart';

class NewWidget extends StatelessWidget {
  ImageProvider mimage;

  String name;

  var price;
  NewWidget({super.key, required this.mimage, required this.name, this.price});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
