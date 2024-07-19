import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pet Shop App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pet Shop'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => GroomingScreen()),
                );
              },
              child: Text('Pet Grooming'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AccessoriesScreen()),
                );
              },
              child: Text('Pet Accessories'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PetSellScreen()),
                );
              },
              child: Text('Sell a Pet'),
            ),
          ],
        ),
      ),
    );
  }
}

class GroomingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pet Grooming'),
      ),
      body: Center(
        child: Text('This is the Pet Grooming Screen'),
      ),
    );
  }
}

class AccessoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pet Accessories'),
      ),
      body: Center(
        child: Text('This is the Pet Accessories Screen'),
      ),
    );
  }
}

class PetSellScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sell a Pet'),
      ),
      body: Center(
        child: Text('This is the Pet Selling Screen'),
      ),
    );
  }
}
