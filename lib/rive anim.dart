import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: RiveAnim1(),
  ));
}

class RiveAnim1 extends StatelessWidget {
  const RiveAnim1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Rive Animation"),
      ),
      body: Container(
        child: RiveAnimation.asset(
          "assets/rive/5709-11155-workouts-button.riv",
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
