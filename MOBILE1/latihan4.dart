import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    home: new Halutama(),
    
    title: 'Navigasi',
    
    //Atur route
    routes: <String, WidgetBuilder>{
      '/Halutama': (BuildContext context) => new Halutama(),
      '/Haldua': (BuildContext context) => new Haldua(),
    },
  ));
}

class Halutama extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        leading:IconButton(color:Colors.white,icon: Icon(IconData(59530, fontFamily: 'MaterialIcons')),onPressed:null,),
        title: Text('Home'),
      ),
      body: new Center(
        child: new Container(
          child: new IconButton(
            icon: Icon(IconData(58128, fontFamily: 'MaterialIcons'),size:30.00,color:Colors.orangeAccent),
            onPressed: () {
              Navigator.pushNamed(context, '/Haldua');
            },
          ),
        ),
      ),
    );
  }
}


class Haldua extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('Navigasi'),
      ),
      body: new Center(
        child: new Container(
          child: new IconButton(
            icon: Icon(Icons.place, size: 40.0),
            onPressed: () {
              Navigator.pushNamed(context, '/Halutama');
            },
          ),
        ),
      ),
    );
  }
}
