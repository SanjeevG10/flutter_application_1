import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Profileui(),
  ));
}

class Profileui extends StatelessWidget {
  const Profileui({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile ui"),
      ),
      drawer: Drawer(
        child: Container(
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://images.pexels.com/photos/1035692/pexels-photo-1035692.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                radius: 50,
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FaIcon(
                    FontAwesomeIcons.facebook,
                    color: Colors.blue,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  FaIcon(
                    FontAwesomeIcons.google,
                    color: Colors.red,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  FaIcon(
                    FontAwesomeIcons.twitter,
                    color: Colors.blue,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  FaIcon(
                    FontAwesomeIcons.linkedin,
                    color: Colors.blue,
                  ),
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Text(
                "chromicle",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              Text("@amFOSS"),
              // SizedBox(height: 15,),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  "mobile app developer and open source enthusiastic",
                  style: TextStyle(color: Colors.black),
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        width: 300,
                        child: ListTile(
                          title: Text("Privacy"),
                          leading: Icon(Icons.privacy_tip),
                          trailing: Icon(Icons.arrow_forward_ios_sharp),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        width: 300,
                        child: ListTile(
                          title: Text("Purchase history"),
                          leading: Icon(Icons.history),
                          trailing: Icon(Icons.arrow_forward_ios_sharp),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        width: 300,
                        child: ListTile(
                          title: Text("Help & Support"),
                          leading: Icon(Icons.help),
                          trailing: Icon(Icons.arrow_forward_ios_sharp),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        width: 300,
                        child: ListTile(
                          title: Text("Settings"),
                          leading: Icon(Icons.settings),
                          trailing: Icon(Icons.arrow_forward_ios_sharp),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        width: 300,
                        child: ListTile(
                          title: Text("Invite a friend"),
                          leading: Icon(Icons.insert_invitation),
                          trailing: Icon(Icons.arrow_forward_ios_sharp),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.grey[400],
                          borderRadius: BorderRadius.circular(30),
                        ),
                        width: 300,
                        child: ListTile(
                          title: Text("Log out"),
                          leading: Icon(Icons.logout),
                          trailing: Icon(Icons.arrow_forward_ios_sharp),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
