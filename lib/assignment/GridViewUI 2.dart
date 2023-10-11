import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: GridViewUi2(),
  ));
}

class GridViewUi2 extends StatelessWidget {
  var image = [
    'https://images.unsplash.com/photo-1553062407-98eeb64c6a62?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1374&q=80',
    'https://media.istockphoto.com/id/1417602445/photo/sunglasses-in-golden-bright-color-in-transparent-plastic-eyewear-top-view-with-shadow-trendy.jpg?s=1024x1024&w=is&k=20&c=rJwm-V82edgprkb2vq94FW7TeNHBr3gdgdz7BXujTQg=',
    'https://media.istockphoto.com/id/1041615078/photo/two-brown-leather-belts-on-dark-background.webp?s=1024x1024&w=is&k=20&c=7WrJEl8vRCGv00GEjp1l7hHBFuPGmtSpfKmLbJ0kRR0=',
    'https://media.istockphoto.com/id/1126858679/photo/ethnic-jewellery-in-low-light.webp?b=1&s=170667a&w=0&k=20&c=YLlRUKHe8uBCnoHL3lI2VAKafhtl1QwDUk_CbRgbf08=',
    'https://images.unsplash.com/photo-1554271509-aa892b5cd66f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTB8fGVhcmluZ3N8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60',
    'https://media.istockphoto.com/id/1324849113/photo/white-cotton-socks-on-white-background.webp?b=1&s=170667a&w=0&k=20&c=g_5hinpABlQim83exf3LFyPoP4j22hDAj6oxEiR7xWo='
  ];

  var name = [
    'Vagabond sack',
    'stella',
    'Whitney belt',
    'Garden strand',
    'Strut earings',
    'Varsity socks'
  ];
  var price = [
    '\$120.00',
    '\$58.00',
    '\$35.00',
    '\$98.00',
    '\$34.00',
    '\$12.00'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('SHRINE'),
          leading: Icon(Icons.more_vert_rounded),
          actions: [Icon(Icons.search), Icon(Icons.settings)],
        ),
        body: GridView.custom(
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            childrenDelegate: SliverChildListDelegate(List.generate(
                6,
                (index) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                              height: 300,
                              width: 420,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      fit: BoxFit.contain,
                                      image: NetworkImage(image[index])))),
                          Text(name[index]),
                          Text(price[index])
                        ],
                      ),
                    )))));
  }
}
