import 'package:flutter/material.dart';
import 'package:flutter_application_1/passing%20data%20btw%20screens/dummy%20data.dart';

void main() {
  runApp(MaterialApp(
    home: ProductHome(),
  ));
}

class ProductHome extends StatelessWidget {
  const ProductHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shop Now'),
      ),
      body: ListView(
        children: products
            .map((productonebyone) => Card(
                  child: ListTile(
                    leading: Image.network(productonebyone['image1']),
                    title: Text(productonebyone['name']),
                    subtitle: Text('${productonebyone['price']}'),
                  ),
                ))
            .toList(),
      ),
    );
  }
}
