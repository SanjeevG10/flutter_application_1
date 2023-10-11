import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Story extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Story Book'),
      ),
      body: Column(
        children: [
          Text(
            'Fairy Tails',
            style: GoogleFonts.creepster(
                fontWeight: FontWeight.bold, fontSize: 50, color: Colors.red),
          ),
          Expanded(
              child: SingleChildScrollView(
            child: const Text(""""""),
          ))
        ],
      ),
    );
  }
}
