import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/firebase_example/email_pass_auth/firebase%20db.dart';
import 'package:flutter_application_1/firebase_example/email_pass_auth/home%20firb.dart';
import 'package:flutter_application_1/firebase_example/email_pass_auth/reg%20firb.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: "AIzaSyBmLJZ1e9zJSwIYivnYl9FHMO7oASQrcTM",
      projectId: "fir-project-fcb7c",
      appId: '1:943972321781:android:618d80d8a25a9a9e52b8bc',
      messagingSenderId: '',
    ),
  );
  // to get the currently logined in user
  User? user = FirebaseAuth.instance.currentUser;
  runApp(MaterialApp(home: user == null ? LoginFire() : HomeFire()));
}

class LoginFire extends StatefulWidget {
  const LoginFire({super.key});

  @override
  State<LoginFire> createState() => _LoginFireState();
}

class _LoginFireState extends State<LoginFire> {
  final email = TextEditingController();
  final pass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Login")),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: "UserName"),
              controller: email,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: "PassWord"),
              controller: pass,
            ),
          ),
          ElevatedButton(
              onPressed: () {
                String mail = email.text.trim();
                String pwd = pass.text.trim();

                FirebaseHelper()
                    .signIn(email: mail, password: pwd)
                    .then((result) {
                  if (result == null) {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => HomeFire()));
                  } else {
                    ScaffoldMessenger.of(context)
                        .showSnackBar(SnackBar(content: Text(result)));
                  }
                });
              },
              child: const Text('Login')),
          TextButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => Register_fire()));
              },
              child: Text("Not a user ? register here!!"))
        ],
      ),
    );
  }
}
