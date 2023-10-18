import 'package:flutter/material.dart';
import 'package:flutter_application_1/assignment/farmers%20freshzone/buttons.dart';
import 'package:flutter_application_1/assignment/farmers%20freshzone/carousalslide.dart';
import 'package:flutter_application_1/assignment/farmers%20freshzone/category.dart';
import 'package:flutter_application_1/assignment/farmers%20freshzone/grid%20part.dart';

class Homeex extends StatefulWidget {
  const Homeex({super.key});

  @override
  State<Homeex> createState() => _HomeexState();
}

class _HomeexState extends State<Homeex> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.green,
            floating: true,
            pinned: false,
            title: Text(
              "FARMERS FRESH ZONE",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white70,
              ),
            ),
            actions: [
              Row(
                children: [
                  Icon(
                    Icons.location_on_outlined,
                    size: 20,
                  ),
                  Text("Kochi"),
                  Icon(Icons.arrow_drop_down),
                ],
              ),
            ],
            bottom: AppBar(
              backgroundColor: Colors.green,
              elevation: 0,
              title: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white70),
                height: 35,
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white70,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    hintText: "search for vegitables,fruits",
                    hintStyle: TextStyle(color: Colors.grey),
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.grey,
                      size: 25,
                    ),
                  ),
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Tabs(),
                Carousalpart(),
                Category(),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Shop By Category",
                    style: TextStyle(fontSize: 20, color: Colors.grey),
                  ),
                ),
                Gridpart(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
