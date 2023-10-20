import 'package:flutter/material.dart';

class Gridd extends StatelessWidget {
  var icons = [
    Icons.account_balance,
    Icons.heat_pump_outlined,
    Icons.payment,
    Icons.transform_rounded,
    Icons.schedule_sharp,
    Icons.qr_code_2
  ];
  var names = [
    "My Account",
    "Load eSewa",
    "Payment",
    "Fund Transfer",
    "Schedule \nPayment",
    "Scan To Pay"
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: GridView.builder(
        itemCount: 6,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemBuilder: (context, index) => Card(
          elevation: 10,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icons[index],
                color: Colors.red,
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                names[index],
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
