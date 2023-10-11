import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Sliverss(),
  ));
}

class Sliverss extends StatelessWidget {
  const Sliverss({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            pinned: false,
            title: Text('Sliver AppBar'),
            bottom: AppBar(
              elevation: 0,
              title: Container(
                width: double.infinity,
                height: 40,
                color: Colors.white,
                child: TextField(
                  decoration: InputDecoration(
                      hintText: 'Search Here',
                      prefixIcon: Icon(Icons.search_rounded),
                      suffixIcon: Icon(Icons.camera_alt)),
                ),
              ),
            ),
          ),
          // SliverList(
          //     delegate:
          //         SliverChildBuilderDelegate((context, index) => Container(
          //               decoration: BoxDecoration(
          //                   borderRadius: BorderRadius.circular(40)),
          //               child: Text('Data $index'),
          //               height: 80,
          //             )))
          SliverGrid(
              delegate: SliverChildBuilderDelegate((context, index) => Card(
                    child: Center(
                      child: Icon(Icons.access_alarm_sharp),
                    ),
                  )),
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2))
        ],
      )),
    );
  }
}
