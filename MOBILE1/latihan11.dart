import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Parsing',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey,
          title: Text('Latihan Parsing'),
          centerTitle: true,
        ),
        body: new ListView(
          children: [
            Parsing(
                pic: 'panda1.png', name: 'Mei Lan', address: 'United States'),
            Parsing(pic: 'panda2.png', name: 'Gu Gu', address: 'Beijing'),
            Parsing(pic: 'panda3.png', name: 'Tao Tao', address: 'Gansu'),
          ],
        ),
      ),
    );
  }
}

class Parsing extends StatelessWidget {
  Parsing({this.pic, this.name, this.address});
  final String pic;
  final String name;
  final String address;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Image(
              image: NetworkImage(
                  'https://raw.githubusercontent.com/sgb-mou/programmobile-dart/master/' +
                      pic),
              height: 100.0),
          Text('Nama: ' + name),
          Text('Alamat: ' + address),
        ],
      ),
    );
  }
}