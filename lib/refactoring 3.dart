import 'package:flutter/material.dart';

class Refactoring3 extends StatelessWidget {
  const Refactoring3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Refactoring 3'),
      ),
      body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2),
          itemBuilder: (context, index) {
            return MyRefractoringWidget(
              bgcolor: Colors.black,
              rimage: Image.network(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS7tlcFwV8K5w-6DBgan5Gar8ms0sR9ohJRHA&usqp=CAU'),
              label: Text('Mango'),
            );
          }),
    );
  }
}

class MyRefractoringWidget extends StatelessWidget {
  final Color? bgcolor;

  final Image? rimage;

  Widget? label;

  VoidCallback? onclick;

  Widget? ricon;

  MyRefractoringWidget(
      {this.bgcolor,
      required this.rimage,
      this.label,
      this.onclick,
      this.ricon});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: bgcolor,
      child: ListTile(
        title: label,
        leading: rimage,
        onTap: onclick,
        trailing: ricon,
      ),
    );
  }
}
