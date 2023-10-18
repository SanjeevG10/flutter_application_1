import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  String buttonname;

  Buttons({required this.buttonname});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 50,
        child: OutlinedButton(
          style: OutlinedButton.styleFrom(shape: StadiumBorder()),
          onPressed: () {},
          child: Text(
            buttonname,
            style: TextStyle(
                color: Colors.green, fontWeight: FontWeight.bold, fontSize: 15),
          ),
        ),
      ),
    );
  }
}

class Tabs extends StatelessWidget {
  const Tabs({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Buttons(buttonname: "VEGETABLES"),
          Buttons(buttonname: "FRUITS"),
          Buttons(buttonname: "EXOTIC"),
          Buttons(buttonname: "FRESH CUTS"),
          Buttons(buttonname: "NUTRITION CHARGERS"),
          Buttons(buttonname: "PACKED FLAVORS"),
        ],
      ),
    );
  }
}
