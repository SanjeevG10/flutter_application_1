import 'package:flutter/material.dart';

class HiveHome extends StatelessWidget {
  String? email;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome $email'),
      ),
    );
  }
}
