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
          title: Text('Latihan Flexible dan Stack'),
          centerTitle: true,
        ),
        body: Stack(
          children: <Widget>[
            Column(
              children: [
                Flexible(
                    flex: 1,
                    child: Row(
                      children: <Widget>[
                        Flexible(
                          flex: 1,
                          child: Container(
                            width: 300,
                            height: 200,
                            margin: EdgeInsets.all(5),
                            color: Colors.grey[350],
                            child: new Text(
                              'Ovando Exha Valendro',
                              style: new TextStyle(
                                fontSize: 23.0,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        Flexible(
                          flex: 2,
                          child: new Container(
                            width: 300,
                            height: 200,
                            margin: EdgeInsets.all(5),
                            color: Colors.grey[400],
                            child: new Text(
                              'Jakarta, 19 Januari 1989',
                              style: new TextStyle(
                                fontSize: 23.0,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        Flexible(
                          flex: 1,
                          child: Container(
                            width: 300,
                            height: 200,
                            margin: EdgeInsets.all(5),
                            color: Colors.grey,
                            child: new Text(
                              'Golongan darah B',
                              style: new TextStyle(
                                fontSize: 23.0,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ],
                    )),
                Flexible(
                    flex: 2,
                    child: Row(
                      children: <Widget>[
                        Flexible(
                          flex: 1,
                          child: Container(
                            width: 300,
                            height: 200,
                            margin: EdgeInsets.all(5),
                            color: Colors.grey[350],
                            child: new Text(
                              'Jalan pabrik tenun no 76',
                              style: new TextStyle(
                                fontSize: 23.0,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        Flexible(
                          flex: 1,
                          child: Container(
                            width: 300,
                            height: 200,
                            margin: EdgeInsets.all(5),
                            color: Colors.grey[400],
                            child: new Text(
                              'Kristen Protestan',
                              style: new TextStyle(
                                fontSize: 23.0,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        Flexible(
                          flex: 1,
                          child: Container(
                            width: 300,
                            height: 200,
                            margin: EdgeInsets.all(5),
                            color: Colors.grey,
                            child: new Text(
                              'Belom Kawin',
                              style: new TextStyle(
                                fontSize: 23.0,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ],
                    )),
                Flexible(
                    flex: 2,
                    child: Row(
                      children: <Widget>[
                        Flexible(
                          flex: 1,
                          child: Container(
                            width: 300,
                            height: 200,
                            margin: EdgeInsets.all(5),
                            color: Colors.grey[350],
                            child: new Text(
                              'Hobi Makan',
                              style: new TextStyle(
                                fontSize: 23.0,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        Flexible(
                          flex: 1,
                          child: Container(
                            width: 300,
                            height: 200,
                            margin: EdgeInsets.all(5),
                            color: Colors.grey[400],
                            child: new Text(
                              'Tinggi 145cm',
                              style: new TextStyle(
                                fontSize: 23.0,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        Flexible(
                          flex: 1,
                          child: Container(
                            width: 300,
                            height: 200,
                            margin: EdgeInsets.all(5),
                            color: Colors.grey,
                            child: new Text(
                              'Anak Pertama',
                              style: new TextStyle(
                                fontSize: 23.0,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        Flexible(
                          flex: 1,
                          child: Container(
                            width: 300,
                            height: 200,
                            margin: EdgeInsets.all(5),
                            color: Colors.grey[850],
                            child: new Text(
                              'Saudara 2',
                              style: new TextStyle(
                                fontSize: 23.0,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ],
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}