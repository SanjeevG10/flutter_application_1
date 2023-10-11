import 'dart:js';

import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/hive%20adapter/database/hivedb.dart';
import 'package:flutter_application_1/hive%20adapter/database/models/user_model.dart';
import 'package:get/get.dart';
import 'package:hive_flutter/adapters.dart';

void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    home: RegisterationHive(),
  ));
}

class RegisterationHive extends StatelessWidget {
  final email = TextEditingController();
  final pass = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Register Page"),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              controller: email,
              decoration: const InputDecoration(
                  hintText: "Email", border: OutlineInputBorder()),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              controller: pass,
              decoration: const InputDecoration(
                  hintText: "Password", border: OutlineInputBorder()),
            ),
          ),
          ElevatedButton(
              onPressed: () async {
                final userList = await HiveDb.instance.getUser();
                validateSignUp(context, userList);
              },
              child: const Text("Register"))
        ],
      ),
    );
  }

  void validateSignUp(BuildContext context, List<User> userList) async {
    final uname = email.text.trim();
    final pwd = pass.text.trim();
    bool userFound = false;
    final validateEmail = EmailValidator.validate(uname);
    if (uname != " && pwd != ") {
      if (validateEmail == true) {
        await Future.forEach(userList, (singleUser) {
          if (singleUser.email == uname) {
            userFound == true;
          } else {
            userFound == false;
          }
        });
        if (userFound == true) {
          Get.snackbar("ERROR", "User already Exist");
        } else {
          final validatePassword = validatePassWord(context, pwd);
          if (validatePassword == true) {
            final user = User(
              email: uname,
              password: pwd,
            );
            await HiveDb.instance.addUser(user);
            Get.offAll(loginhome());
            Get.snackbar("SUCCESS", "User Registered successfully");
          }
        }
      } else {
        Get.snackbar("ERROE", "Enter a valid email");
      }
    } else {
      Get.snackbar("ERROR", "Field must not Empty");
    }
  }

  bool validatePassWord(BuildContext context, String pwd) {
    if (pwd.length < 6) {
      Get.snackbar("ERROR", "Password length should be > 6!!");
      return false;
    } else {
      return true;
    }
  }
}

loginhome() {}
