import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: GridViewCount(),
  ));
}

class GridViewCount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GridView Count'),
      ),
      body: GridView.count(
        crossAxisCount: 3,
        children: List.generate(
            15,
            (index) => const Card(
                  child: Center(
                    child: Text('hello'),
                  ),
                )),
      ),
    );
  }
}
