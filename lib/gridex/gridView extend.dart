import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: GridViewExtend(),
  ));
}

class GridViewExtend extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GridView Extend'),
      ),
      body: GridView.extent(
        maxCrossAxisExtent: 3,
        children: List.generate(
            15,
            (index) => const Card(
                  child: Center(
                    child: Text('hi'),
                  ),
                )),
      ),
    );
  }
}
