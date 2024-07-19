import 'package:flutter/material.dart';
import 'package:flutter_application_1/my%20first%20project/constants.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.20,
      decoration: BoxDecoration(
          color: KPrimaryColor, borderRadius: BorderRadius.circular(30)),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Image.network(
                'https://img.freepik.com/premium-photo/female-veterinary-doctor-consulting-room-with-puppy-her-arms_884941-653.jpg?w=740'),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 45),
              child: Column(
                children: [
                  Text(
                    'Pick Up The Right Pet',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                      'Before adopting a new pet, make sure it is the right one for you',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 16)),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
