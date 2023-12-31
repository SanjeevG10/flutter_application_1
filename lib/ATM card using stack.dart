import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ATM extends StatelessWidget {
  const ATM({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ATM'),
      ),
      body: Stack(
        children: [
          Container(
            height: 300,
            width: 400,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                image: const DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        'data:image/jpeg;base64,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'))),
          ),
          Positioned(
            left: 50,
            right: 80,
            child: Row(
              children: [
                FaIcon(
                  FontAwesomeIcons.box,
                  size: 40,
                  color: Colors.white12,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
