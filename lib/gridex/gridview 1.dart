import 'package:flutter/material.dart';
import 'package:flutter_application_1/gridex/gridview%202.dart';

void main() {
  runApp(MaterialApp(
    home: GridView1(),
  ));
}

class GridView1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My GridView'),
      ),
      body: GridView(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        children: List.generate(
            15,
            (index) => const Card(
                  color: Colors.red,
                  child: Center(
                    child: Icon(Icons.ac_unit_rounded),
                  ),
                )),
      ),
    );
  }
}
