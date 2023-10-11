import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Whatsapp(),
  ));
}

class Whatsapp extends StatelessWidget {
  var name = [
    'messi',
    'carlos',
    'ronaldo',
    'neymar',
    'de bruyne',
    'beckham',
    'thiago silva',
    'pedri'
  ];
  var image = [
    'https://upload.wikimedia.org/wikipedia/commons/b/b4/Lionel-Messi-Argentina-2022-FIFA-World-Cup_%28cropped%29.jpg',
    'https://upload.wikimedia.org/wikipedia/commons/6/67/Roberto_Carlos_in_Moscow_3.jpg',
    'https://upload.wikimedia.org/wikipedia/commons/8/8c/Cristiano_Ronaldo_2018.jpg',
    'https://i.eurosport.com/2023/07/15/3744265-76175228-2560-1440.jpg',
    'https://s.hs-data.com/bilder/spieler/gross/142263.jpg',
    'https://assets.goal.com/v3/assets/bltcc7a7ffd2fbf71f5/blt3a48501789cdf113/60db790b47339c0fc01c188c/3e947186d512164cf8dbe0987a865dd2b714eea6.png?auto=webp&format=pjpg&width=3840&quality=60',
    'https://encrypted-tbn3.gstatic.com/licensed-image?q=tbn:ANd9GcT4x1KCNGLf2LnSXC9N-d3CdxIqLVtKQwQ_PNbihjavkc7pKsi3cDnFM98rGREIgrwVqIxv0d6Dg7uRYvg',
    'https://assets.goal.com/v3/assets/bltcc7a7ffd2fbf71f5/blt9871eeb0b792847b/6166d7661190420f9cc9c922/b8c60616761107aca31674ce60ffbe2798d0bd1c.jpg?auto=webp&format=pjpg&width=3840&quality=60'
  ];
  var text = ['abc', 'def', 'gtgh', 'dgd', 'uhgb', 'ergdg', 'rtdh', 'rtgdg'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text('Whatsapp'),
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
                    subtitle: Text(text[index]),
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
