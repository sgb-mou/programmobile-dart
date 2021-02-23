import 'package:flutter/material.dart';

void main() => runApp(Myapp());

class Myapp extends StatefulWidget {
  @override
  _MyappState createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  String jwb1 = '';
  String jwb2 = '';
  String jwb3 = '';

  void _jwb1(String value) {
    setState(() {
      if (value == "1c") {
        jwb1 = "benar";
      } else {
        jwb1 = "salah";
      }
    });
  }

  void _jwb2(String value) {
    setState(() {
      if (value == "2a") {
        jwb2 = "benar";
      } else {
        jwb2 = "salah";
      }
    });
  }

  void _jwb3(String value) {
    setState(() {
      if (value == "3b") {
        jwb3 = "benar";
      } else {
        jwb3 = "salah";
      }
    });
  }

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
                    value: "1a",
                    groupValue: jwb1,
                    title: Text("Medan Timur"),
                    onChanged: _jwb1),
                RadioListTile(
                    value: "1b",
                    groupValue: jwb1,
                    title: Text("Jakarta Selatan"),
                    onChanged: _jwb1),
                RadioListTile(
                    value: "1c",
                    groupValue: jwb1,
                    title: Text("Papua Barat"),
                    onChanged: _jwb1),
                Container(
                  padding: EdgeInsets.all(20.00),
                  child: Text("Jawaban anda $jwb1"),
                ),
                Text("2. Dimanakah Letak Candi Air Terjun Bajuin ?"),
                RadioListTile(
                    value: "2a",
                    groupValue: jwb2,
                    title: Text("Kalimantan Selatan"),
                    onChanged: _jwb2),
                RadioListTile(
                    value: "2b",
                    groupValue: jwb2,
                    title: Text("Sumatera Selatan"),
                    onChanged: _jwb2),
                RadioListTile(
                    value: "2c",
                    groupValue: jwb2,
                    title: Text("Jakarta Selatan"),
                    onChanged: _jwb2),
                Container(
                  padding: EdgeInsets.all(20.00),
                  child: Text("Jawaban anda $jwb2"),
                ),
                Text("3. Dimana Letak Gunung Mahameru Berada ?"),
                RadioListTile(
                    value: "3a",
                    groupValue: jwb3,
                    title: Text("Papua Barat"),
                    onChanged: _jwb3),
                RadioListTile(
                    value: "3b",
                    groupValue: jwb3,
                    title: Text("Sulawesi Utara"),
                    onChanged: _jwb3),
                RadioListTile(
                    value: "3c",
                    groupValue: jwb3,
                    title: Text("Kalimantan Selatan"),
                    onChanged: _jwb3),
                Container(
                  padding: EdgeInsets.all(20.00),
                  child: Text("Jawaban anda $jwb3"),
                ),
              ],
            ),
          ),
        ));
  }
}