import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Useraccount extends StatelessWidget {
  const Useraccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
      backgroundColor: Color(Colors.transparent as int),
      title: Row(children: [
        Text('Instagram'),
        Icon(Icons.favorite),
        Icon(Icons.messenger_outline),
      ]),
     ),
    );
  }
}