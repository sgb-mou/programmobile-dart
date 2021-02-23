import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    home: new Latihan1(),
  ));
}

class Latihan1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: new Center(
        child: new Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text("Ovando",
                style: TextStyle(
                    fontSize: 50,
                    fontFamily: "sophmore-year",
                    color: Colors.green)),
            Text("Exha",
                style: TextStyle(
                    fontSize: 35,
                    fontFamily: "kbscaredstraight",
                    color: Colors.yellow)),
            Text("Valendro",
                style: TextStyle(
                    fontSize: 15,
                    fontFamily: "whisperadream",
                    color: Colors.red)),
          ],
        ),
      ),
    );
  }
}
