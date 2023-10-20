import 'package:flutter/material.dart';

class Stackk extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 200,
        ),
        Container(
          // width: 100,
          height: 100,
          color: Colors.red,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
          child: SizedBox(
            height: 180,
            child: Card(
              child: Row(
                children: [
                  SizedBox(
                    width: 30,
                  ),
                  CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage("assests/images/bgimage.jpg"),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "SAMMUNATI BACHAT KHATA",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            "NPR.1,203938475",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(
                            Icons.visibility,
                            color: Colors.blue,
                          ),
                        ],
                      ),
                      Text(
                        "3756572819039",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
