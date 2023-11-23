import 'package:flutter/material.dart';
import 'package:flutter_application_1/practice/instagram%20ui/instahome.dart';

void main() {
  runApp(Home(product()));
}

product() {}

class Product {
  final String id;
  final String name;
  final String imageUrl;
  final double price;

  Product(
      {required this.id,
      required this.name,
      required this.imageUrl,
      required this.price});
}

class Cart {
  final List<Product> items = [];
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pet Shop',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ProductListScreen(),
    );
  }
}

class ProductListScreen extends StatelessWidget {
  final List<Product> products = [
    Product(id: '1', name: 'Dog Food', price: 20.0, imageUrl: ''),
    Product(id: '2', name: 'Cat Food', price: 15.0, imageUrl: ''),
    // Add more products as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pet Shop'),
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(products[index].name),
            subtitle: Text('\$${products[index].price.toString()}'),
            leading:
                Image.asset(products[index].imageUrl, width: 50, height: 50),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      ProductDetailScreen(product: products[index]),
                ),
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ShoppingCartScreen(),
            ),
          );
        },
        child: Icon(Icons.shopping_cart),
      ),
    );
  }
}

class ProductDetailScreen extends StatelessWidget {
  final Product product;

  ProductDetailScreen({required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(product.name),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(product.imageUrl, width: 200, height: 200),
          SizedBox(height: 20),
          Text('Price: \$${product.price.toString()}'),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              addToCart(context, product);
            },
            child: Text('Add to Cart'),
          ),
        ],
      ),
    );
  }

  void addToCart(BuildContext context, Product product) {
    final Cart cart = Cart();
    cart.items.add(product);
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('${product.name} added to cart'),
      ),
    );
  }
}

class ShoppingCartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Cart cart = Cart();

    return Scaffold(
      appBar: AppBar(
        title: Text('Shopping Cart'),
      ),
      body: ListView.builder(
        itemCount: cart.items.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(cart.items[index].name),
            subtitle: Text('\$${cart.items[index].price.toString()}'),
            leading:
                Image.asset(cart.items[index].imageUrl, width: 50, height: 50),
          );
        },
      ),
    );
  }
}
