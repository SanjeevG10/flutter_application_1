import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StatelessPage extends StatelessWidget {
  final String Location;

  final String name;

  int? phone;

  StatelessPage(
      {super.key,
      required this.name,
      required this.Location,
      required this.phone,
      required String location});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Received data'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              name,
              style: GoogleFonts.bahiana(fontSize: 30, color: Colors.purple),
            ),
            Text(
              Location,
              style: GoogleFonts.abel(fontSize: 20, color: Colors.green),
            ),
            Text(
              '$phone',
              style: GoogleFonts.cairo(fontSize: 10, color: Colors.red),
            ),
          ],
        ),
      ),
    );
  }
}
