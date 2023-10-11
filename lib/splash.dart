import 'package:flutter/material.dart';

void main() {
  //attach our widget tree to the ui
  runApp(MaterialApp(
    //default theme of our app
    home: Splashpage(), //initial page to be launched
  ));
}

// stateless means this page doesnot undergo any statechanges
class Splashpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('my splash page')),
    );
  }
}
