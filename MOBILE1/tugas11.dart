import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Parsing ',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey,
          title: Text('Tugas Parsing'),
          centerTitle: true,
        ),
        body: new ListView(
          children: <Widget>[
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Parsing(pic: 'ARTIST PALETTE.png', name: 'Palette'),
                Parsing(pic: 'ARTS.png', name: 'Mask'),
                Parsing(pic: 'CAMERA.png', name: 'Camera'),
              ],
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Parsing(pic: 'CLAPPER BOARD.png', name: 'Clapper'),
                Parsing(pic: 'GUITAR.png', name: 'Guitar'),
                Parsing(pic: 'HEADPHONE.png', name: 'Headphone'),
              ],
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Parsing(pic: 'MICROPHONE.png', name: 'Mic'),
                Parsing(pic: 'MOVIE CAMERA.png', name: 'Videocam'),
                Parsing(pic: 'SAXOPHONE.png', name: 'Saxophone'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class Parsing extends StatelessWidget {
  Parsing({this.pic, this.name});
  final String pic;
  final String name;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      child: Column(
        children: <Widget>[
          Image(
              image: NetworkImage(
                  'https://raw.githubusercontent.com/sgb-mou/programmobile-dart/master/PNG/' +
                      pic),
              height: 120.0,
              width: 120.0),
          Text(name,textAlign: TextAlign.center),
        ],
      ),
    );
  }
}
