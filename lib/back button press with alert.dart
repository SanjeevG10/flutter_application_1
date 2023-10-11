import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: ExitApp1(),
  ));
}

class ExitApp1 extends StatelessWidget {
  const ExitApp1({super.key});

  @override
  Widget build(BuildContext context) {
    Future<bool> showAlert() async {
      return await showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: Text("Exit"),
              content: Text("Do you really want to Exit"),
              actions: [
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pop(true);
                    },
                    child: Text("Yes")),
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pop(false);
                    },
                    child: Text("No")),
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pop(false);
                    },
                    child: Text("Cancel"))
              ],
            );
          });
    }

    return WillPopScope(
        onWillPop: showAlert,
        child: Scaffold(
          appBar: AppBar(
            title: const Text("ExitAppAlert"),
          ),
          body: Center(
            child: Text("Press back button to exit"),
          ),
        ));
  }
}
