import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    home: listview1(),
  ));
}

class listview1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CoCo KICKS"),
      ),
      body: ListView(
        children: [
          Center(
              child: Text(
            "SHOP HERE",
            style: GoogleFonts.ubuntuCondensed(
                fontSize: 50, color: const Color.fromARGB(255, 0, 23, 61)),
          )),
          Card(
            child: ListTile(
              title: Text("Nike AJ1"),
              subtitle: Text("\$480"),
              leading: Image.network(
                  "https://static.nike.com/a/images/t_prod_ss/w_960,c_limit,f_auto/953f8c77-48ab-4583-b040-c04a3a93ab32/air-jordan-1-ko-chicago-release-date.jpg"),
              trailing: Icon(Icons.shopping_cart),
            ),
          ),
          const Card(
            child: ListTile(
              title: Text("Yeezes"),
              subtitle: Text("\$180"),
              leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://5.imimg.com/data5/EV/UI/MY-9581609/adidas-yeezy-boost-350-v2-butter.jpg")),
              trailing: const Icon(Icons.shopping_cart),
            ),
          ),
          const Card(
            child: ListTile(
              title: Text("Loafers"),
              subtitle: Text("\$230"),
              leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://5.imimg.com/data5/DY/SZ/WO/SELLER-67435232/elite-classic-men-s-loafers-500x500.jpeg")),
              trailing: const Icon(Icons.shopping_cart),
            ),
          ),
        ],
      ),
    );
  }
}
