import 'package:flutter/material.dart';
import 'package:flutter_application_1/my%20first%20project/banner.dart';
import 'package:flutter_application_1/my%20first%20project/constants.dart';
import 'package:flutter_application_1/passing%20data%20btw%20screens/dummy%20data.dart';

class Body extends StatefulWidget {
  

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        children: [
          HomeBanner(size: size),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Text(
                'New Pets',
                
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                ),
              ),
            ],
          ),
          Column(
            children: [
              Container(
                height: 180,
                width: 160,
                decoration: BoxDecoration(
                  color: KPrimaryColor,
                  borderRadius: BorderRadius.circular(20)
                ),
                child: Image.network(products[0].image),
              ),
              Text(
                products[0].title,style: ,
              )
            ],
          )
        ],
      ),
    );
  }
}

