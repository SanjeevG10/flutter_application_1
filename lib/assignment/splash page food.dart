import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: FreshFood(),
  ));
}

class FreshFood extends StatelessWidget {
  const FreshFood({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('spalsh page'),
      ),
      body: Container(
        color: Colors.redAccent,
        child: Column(children: [
          Image.network(
              'https://cdn.vectorstock.com/i/1000x1000/55/23/sheep-food-logo-vector-38245523.webp'),
        ]),
      ),
    );
  }
}
