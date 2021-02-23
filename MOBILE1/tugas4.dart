import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    home: new Home(),
  ));
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: const EdgeInsets.only(top: 0.0),
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.grey,
              ),
              child: Text(
                'Aplikasi Appbar',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(IconData(57545, fontFamily: 'MaterialIcons'),
                  color: Colors.black),
              title: Text('Messages'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Messages()),
                );
              },
            ),
            ListTile(
              leading: Icon(
                IconData(59475, fontFamily: 'MaterialIcons'),
                color: Colors.grey,
              ),
              title: Text('Profile'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Profile()),
                );
              },
            ),
            ListTile(
              leading: Icon(IconData(58128, fontFamily: 'MaterialIcons'),
                  color: Colors.orange),
              title: Text('Headset'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Headset()),
                );
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text("Tugas 4"),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(IconData(59574, fontFamily: 'MaterialIcons')),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Cari()),
              );
            },
          ),
          IconButton(
            icon: Icon(IconData(59383, fontFamily: 'MaterialIcons')),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Notification()),
              );
            },
          ),
          IconButton(
            icon: Icon(IconData(59590, fontFamily: 'MaterialIcons')),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Power()),
              );
            },
          ),
        ],
      ),
      body: new Center(
          child: new Container(
              width: 190.0,
              height: 190.0,
              decoration: new BoxDecoration(
                  shape: BoxShape.circle,
                  image: new DecorationImage(
                      fit: BoxFit.fill,
                      image: new NetworkImage(
                          "https://www.linkpicture.com/q/pngguru.com_3.png"))))),
    );
  }
}

class Cari extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cari"),
        centerTitle: true,
        backgroundColor: Colors.grey,
      ),
      body: new Center(
          child: new Container(
              width: 190.0,
              height: 190.0,
              decoration: new BoxDecoration(
                  shape: BoxShape.circle,
                  image: new DecorationImage(
                      fit: BoxFit.fill,
                      image: new NetworkImage(
                          "https://www.linkpicture.com/q/panda-holding-magnifying-glass-empty-plate-cute-69647671.jpg"))))),
    );
  }
}

class Notification extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Notification"),
        centerTitle: true,
        backgroundColor: Colors.grey,
      ),
      body: new Center(
          child: new Container(
              width: 190.0,
              height: 190.0,
              decoration: new BoxDecoration(
                  shape: BoxShape.circle,
                  image: new DecorationImage(
                      image: new NetworkImage(
                          "https://www.linkpicture.com/q/angry-panda.png"))))),
    );
  }
}

class Power extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Power"),
        centerTitle: true,
        backgroundColor: Colors.grey,
      ),
      body: new Center(
          child: new Container(
              width: 190.0,
              height: 190.0,
              decoration: new BoxDecoration(
                  shape: BoxShape.circle,
                  image: new DecorationImage(
                      fit: BoxFit.fill,
                      image: new NetworkImage(
                          "https://www.linkpicture.com/q/Angry-Panda-T-shirt-design-26753.jpg"))))),
    );
  }
}

class Messages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Messages"),
        centerTitle: true,
        backgroundColor: Colors.grey,
      ),
    );
  }
}

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
        centerTitle: true,
        backgroundColor: Colors.grey,
      ),
    );
  }
}

class Headset extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Headset"),
        centerTitle: true,
        backgroundColor: Colors.grey,
      ),
    );
  }
}
