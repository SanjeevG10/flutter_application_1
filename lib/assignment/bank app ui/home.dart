import 'package:flutter/material.dart';
import 'package:flutter_application_1/assignment/bank%20app%20ui/refactor/gridvieww.dart';
import 'package:flutter_application_1/assignment/bank%20app%20ui/refactor/listt.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Ui(),
  ));
}

class Ui extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("welcome! MAUSAM"),
        centerTitle: true,
        leading: Icon(Icons.menu),
        actions: [
          Icon(Icons.account_box),
        ],
      ),
      body: CustomScrollView(slivers: [
        SliverList(
          delegate: SliverChildListDelegate([
            Stack(),
            Row(
              children: [
                FaIcon(FontAwesomeIcons.leaf, color: Colors.red),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "WOULD YOU LIKE TO?",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Gridd(),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  FaIcon(FontAwesomeIcons.leaf, color: Colors.red),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "LAST TRANSACTIONS",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            Listtt(
              transactionid: '746676/27467546',
              date: '10-6-2019',
              npr: 'NPR.10,00000000',
            ),
            Listtt(
                transactionid: "8888/333333",
                date: "12-8-2020",
                npr: "NPR.11,000000"),
            Listtt(
                transactionid: "444444/5555555",
                date: "14-6-2021",
                npr: "NPR.12,00000"),
            Listtt(
                transactionid: "6666/77777",
                date: "19-9-2022",
                npr: "NPR.13,00000"),
          ]),
        ),
      ]),
    );
  }
}
