import 'package:flutter/material.dart';

class Permission extends StatefulWidget {
  const Permission({super.key});

  @override
  State<Permission> createState() => _PermissionState();
}

class _PermissionState extends State<Permission> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App Permission'),
      ),
      body: Padding(padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          ElevatedButton(onPressed: , child: const Text('Request Camera Permission',
          style: TextStyle(
            fontSize: 16,
          ),),),
          const SizedBox(
            height: 20.0,
          ),
          ElevatedButton(onPressed: , child: const Text('Request Multiple Permissions',
          
          ))
        ],
      ),)
    );
  }
}