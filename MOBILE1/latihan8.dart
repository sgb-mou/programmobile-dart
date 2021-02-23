import 'package:flutter/material.dart';

void main() => runApp(Myapp());

class Myapp extends StatefulWidget {
  @override
  _MyappState createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  String jk = '';
  String status = '';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: new Scaffold(
          appBar: new AppBar(
            backgroundColor: Colors.grey,
            title: Text("Formulir Lanjutan"),
            centerTitle: true,
          ),
          body: new Container(
            padding: EdgeInsets.all(10.00),
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("1. Dimanakah Letak Raja Ampat ?"),
                RadioListTile(
                  value: "medtim",
                  groupValue: jk,
                  title: Text("Medan Timur"),
                  onChanged: (String value) {
                    setState(() {
                      jk = value;
                    });
                  },
                ),
                RadioListTile(
                  value: "jaksel",
                  groupValue: jk,
                  title: Text("Jakarta Selatan"),
                  onChanged: (String value) {
                    setState(() {
                      jk = value;
                    });
                  },
                ),
                RadioListTile(
                  value: "papbar",
                  groupValue: jk,
                  title: Text("Papua Barat"),
                  onChanged: (String value) {
                    setState(() {
                      jk = value;
                    });
                  },
                ),
              ],
            ),
          ),
        ));
  }
}
