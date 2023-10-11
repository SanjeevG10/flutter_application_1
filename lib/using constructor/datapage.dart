import 'package:flutter/material.dart';
import 'package:flutter_application_1/using%20constructor/to_stateless_page.dart';

void main() {
  runApp(MaterialApp(
    home: DataPage(),
  ));
}

class DataPage extends StatelessWidget {
  String name = "Luminar";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Passing Data between Screens Using Constructor'),
      ),
      body: Container(
        alignment: Alignment.center,
        height: 250,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => StatelessPage(
                            name: name,
                            location: "Kakkanad",
                            phone: 9876543210,
                            Location: '',
                          )));
                },
                child: const Text("To Stateless Page")),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => StatefulPage(
                          name: name,
                          location: "Kakkanad",
                          phone: 9876543210)));
                },
                child: const Text("To Stateful Page"))
          ],
        ),
      ),
    );
  }
}

StatefulPage(
    {required String name, required String location, required int phone}) {}
