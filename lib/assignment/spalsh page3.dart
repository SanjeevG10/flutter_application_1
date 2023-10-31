import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    home: Splash(),
  ));
}

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assests/images/bgimage.jpg"))),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.emoji_food_beverage_rounded,
                size: 100,
                color: Colors.greenAccent,
              ),
              Text(
                "Fresh Foods",
                style: GoogleFonts.dancingScript(
                    fontSize: 50, color: Colors.white),
              ),
              Text(
                "Tasty & Healthy",
                style: GoogleFonts.bitter(fontSize: 20, color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
