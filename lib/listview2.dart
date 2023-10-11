import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ListView2(),
  ));
}

class ListView2 extends StatelessWidget {
  var name = [
    'soman',
    'divakharan',
    'darman',
    'ssddwd',
    'dfyrfuhf',
    'ergtegdv',
    'strgtdgegd',
    'rgdeghgngj'
  ];
  var image = [];
  var price = [139, 234, 456, 150, 200, 160, 100, 190];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 4, 90, 81),
        title: const Text('ListView2'),
        actions: [
          Icon(Icons.camera_alt),
          SizedBox(width: 15),
          Icon(Icons.search),
          PopupMenuButton(itemBuilder: (context) {
            return [
              PopupMenuItem(child: Text('settings')),
              PopupMenuItem(child: Text('New Group')),
              PopupMenuItem(child: Text('privacy')),
              PopupMenuItem(child: Text('New Broadcast'))
            ];
          })
        ],
      ),
      body: ListView(
        children: List.generate(
            8,
            (index) => Card(
                  child: ListTile(
                    title: Text(name[index]),
                    subtitle: Text('\$ ${price[index]}'),
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(image[index]),
                    ),
                    trailing: const Wrap(
                      direction: Axis.vertical,
                      children: [
                        Text('1.20'),
                        SizedBox(
                          width: 15,
                        ),
                        CircleAvatar(
                          minRadius: 8,
                          maxRadius: 10,
                          backgroundColor: Colors.green,
                          child: Text('2'),
                        )
                      ],
                    ),
                  ),
                )),
      ),
    );
  }
}
