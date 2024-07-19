import 'package:flutter/material.dart';

class Product {
  final String image, title, description;
  final int price, id;

  Product({
    this.id,
    this.image,
    this.title,
    this.price,
    this.description,
  });
}

List<Product> products = [
  Product(
    id: 1,
    title: 'Baby Dog',
    price: 100,
    description: dummydisc,
    image:
        'https://images.unsplash.com/photo-1611003229235-fb5748510459?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTl8fGJhYnklMjBkb2d8ZW58MHx8MHx8fDA%3D',
  ),
  Product(
    id: 2,
    title: 'Cute Cat',
    price: 75,
    description: dummydisc,
    image:
        'https://images.unsplash.com/photo-1604713964712-d36a76e7f06f?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjB8fGN1dGUlMjBjYXR8ZW58MHx8MHx8fDA%3D',
  ),
  Product(
    id: 3,
    title: 'Young Dog',
    price: 90,
    description: dummydisc,
    image:
        'https://images.unsplash.com/photo-1672363340395-5cc34c7a4118?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mjd8fHlvdW5nJTIwZG9nfGVufDB8fDB8fHww',
  ),
  Product(
    id: 4,
    title: 'Black Dog',
    price: 95,
    description: dummydisc,
    image:
        'https://images.unsplash.com/photo-1553882809-a4f57e59501d?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8YmxhY2slMjBkb2d8ZW58MHx8MHx8fDA%3D',
  ),
  Product(
    id: 5,
    title: 'Cute Dog',
    price: 92,
    description: dummydisc,
    image:
        'https://images.unsplash.com/photo-1582456891925-a53965520520?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8Y3V0ZSUyMGRvZ3xlbnwwfHwwfHx8MA%3D%3D',
  ),
];

String dummydisc =
    'Loren Ipusm is simply dummy text of the printing and typesetting industry. Loren Ipusm has been the industrys standard';
