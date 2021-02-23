import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
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
                              child: Image.network(
                                  'https://raw.githubusercontent.com/sgb-mou/PNG12/main/1.png'),
                            ),
                          ),
                          Flexible(
                            flex: 1,
                            child: Container(
                              child: Image.network(
                                  'https://raw.githubusercontent.com/sgb-mou/PNG12/main/2.png'),
                            ),
                          ),
                          Flexible(
                            flex: 1,
                            child: Container(
                              child: Image.network(
                                  'https://raw.githubusercontent.com/sgb-mou/PNG12/main/3.png'),
                            ),
                          ),
                          Flexible(
                            flex: 1,
                            child: Container(
                              child: Image.network(
                                  'https://raw.githubusercontent.com/sgb-mou/PNG12/main/4.png'),
                            ),
                          ),
                        ],
                      )),
                  Flexible(
                      flex: 1,
                      child: Row(
                        children: <Widget>[
                          Flexible(
                            flex: 1,
                            child: Container(
                              child: Image.network(
                                  'https://raw.githubusercontent.com/sgb-mou/PNG12/main/5.png'),
                            ),
                          ),
                          Flexible(
                            flex: 1,
                            child: Container(
                              child: Image.network(
                                  'https://raw.githubusercontent.com/sgb-mou/PNG12/main/6.png'),
                            ),
                          ),
                          Flexible(
                            flex: 1,
                            child: Container(
                              child: Image.network(
                                  'https://raw.githubusercontent.com/sgb-mou/PNG12/main/7.png'),
                            ),
                          ),
                          Flexible(
                            flex: 1,
                            child: Container(
                              child: Image.network(
                                  'https://raw.githubusercontent.com/sgb-mou/PNG12/main/8.png'),
                            ),
                          ),
                        ],
                      )),
                  Flexible(
                      flex: 1,
                      child: Row(
                        children: <Widget>[
                          Flexible(
                            flex: 1,
                            child: Container(
                              child: Image.network(
                                  'https://raw.githubusercontent.com/sgb-mou/PNG12/main/9.png'),
                            ),
                          ),
                          Flexible(
                            flex: 1,
                            child: Container(
                              child: Image.network(
                                  'https://raw.githubusercontent.com/sgb-mou/PNG12/main/10.png'),
                            ),
                          ),
                          Flexible(
                            flex: 1,
                            child: Container(
                              child: Image.network(
                                  'https://raw.githubusercontent.com/sgb-mou/PNG12/main/11.png'),
                            ),
                          ),
                          Flexible(
                            flex: 1,
                            child: Container(
                              child: Image.network(
                                  'https://raw.githubusercontent.com/sgb-mou/PNG12/main/12.png'),
                            ),
                          ),
                        ],
                      )),
                  Flexible(
                      flex: 1,
                      child: Row(
                        children: <Widget>[
                          Flexible(
                            flex: 1,
                            child: Container(
                              child: Image.network(
                                  'https://raw.githubusercontent.com/sgb-mou/PNG12/main/13.png'),
                            ),
                          ),
                          Flexible(
                            flex: 1,
                            child: Container(
                              child: Image.network(
                                  'https://raw.githubusercontent.com/sgb-mou/PNG12/main/14.png'),
                            ),
                          ),
                          Flexible(
                            flex: 1,
                            child: Container(
                              child: Image.network(
                                  'https://raw.githubusercontent.com/sgb-mou/PNG12/main/15.png'),
                            ),
                          ),
                          Flexible(
                            flex: 1,
                            child: Container(
                              child: Image.network(
                                  'https://raw.githubusercontent.com/sgb-mou/PNG12/main/16.png'),
                            ),
                          ),
                        ],
                      )),
                  Flexible(
                      flex: 1,
                      child: Row(
                        children: <Widget>[
                          Flexible(
                            flex: 1,
                            child: Container(
                              child: Image.network(
                                  'https://raw.githubusercontent.com/sgb-mou/PNG12/main/17.png'),
                            ),
                          ),
                          Flexible(
                            flex: 1,
                            child: Container(
                              child: Image.network(
                                  'https://raw.githubusercontent.com/sgb-mou/PNG12/main/18.png'),
                            ),
                          ),
                          Flexible(
                            flex: 1,
                            child: Container(
                              child: Image.network(
                                  'https://raw.githubusercontent.com/sgb-mou/PNG12/main/19.png'),
                            ),
                          ),
                          Flexible(
                            flex: 1,
                            child: Container(
                              child: Image.network(
                                  'https://raw.githubusercontent.com/sgb-mou/PNG12/main/20.png'),
                            ),
                          ),
                        ],
                      )),
                ],
              ),
              Center(
                child: Container(
                  width: 400,
                  height: 400,
                  child: Image.network(
                      'https://raw.githubusercontent.com/sgb-mou/programmobile-dart/master/mascot.png'),
                ),
              ),
            ],
          ),
        ));
  }
}