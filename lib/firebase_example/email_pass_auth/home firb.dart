import 'package:flutter/material.dart';
import 'package:flutter_application_1/firebase_example/email_pass_auth/firebase%20db.dart';
import 'package:flutter_application_1/firebase_example/email_pass_auth/login%20firb.dart';

class HomeFire extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              FirebaseHelper().signOut().then((result) => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginFire())));
            },
            child: Text("SignOut")),
      ),
    );
  }
}
