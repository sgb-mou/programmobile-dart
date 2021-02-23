import 'package:flutter/material.dart';

void main() => runApp(Myapp());

class Myapp extends StatefulWidget {
  @override
  _MyappState createState() => _MyappState();
}

class _MyappState extends State<Myapp> with SingleTickerProviderStateMixin {
  TabController controller;
  @override
  void initState() {
    controller = new TabController(vsync: this, length: 3);
    super.initState();
  }

  @override
  dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new Scaffold(
          appBar: new AppBar(
            backgroundColor: Colors.grey,
            title: Text("Belajar Tabbar"),
            centerTitle: true,
            bottom: TabBar(controller: controller, tabs: <Widget>[
              Tab(icon: Icon(Icons.home), text: "Home"),
              Tab(icon: Icon(Icons.message), text: "Pesan"),
              Tab(icon: Icon(Icons.person), text: "Profil"),
            ]),
          ),
          body: TabBarView(controller: controller, children: <Widget>[
            Home(),
            Pesan(),
            Profil(),
          ])),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Image(
            image:
                NetworkImage('https://linkpicture.com/q/pngguru.com_3.png')));
  }
}

class Pesan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        ListTile(
          leading: ClipRRect(
              borderRadius: BorderRadius.circular(50.0),
              child: Image(
                  image: NetworkImage(
                      'https://www.linkpicture.com/q/pngguru.com_3.png'))),
          title: Text("Mou"),
          subtitle: Text("Apakah latihannya sudah selesai ?"),
          trailing: Text(
            '20.37',
            style: TextStyle(fontSize: 12.0),
          ),
        ),
        ListTile(
          leading: ClipRRect(
              borderRadius: BorderRadius.circular(50.0),
              child: Image(
                  image: NetworkImage(
                      'https://www.linkpicture.com/q/pngguru.com_3.png'))),
          title: Text("Mou"),
          subtitle: Text("Kapan latihannya dikumpul ?"),
          trailing: Text(
            '20.09',
            style: TextStyle(fontSize: 12.0),
          ),
        ),
        ListTile(
          leading: ClipRRect(
              borderRadius: BorderRadius.circular(50.0),
              child: Image(
                  image: NetworkImage(
                      'https://www.linkpicture.com/q/pngguru.com_3.png'))),
          title: Text("Mou"),
          subtitle: Text("Hai"),
          trailing: Text(
            '19.20',
            style: TextStyle(fontSize: 12.0),
          ),
        ),
      ],
    );
  }
}

class Profil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        ListTile(
          leading: Icon(Icons.contacts),
          title: Text("Ovando Exha Valendro"),
          subtitle: Text("2018021198"),
          
        ),
      ],
    );
  }
}
