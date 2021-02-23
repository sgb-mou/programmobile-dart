import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Pemrograman Mobile",
    debugShowCheckedModeBanner: false,
    home: new SettingAppbar(),
  ));
}

class SettingAppbar extends StatefulWidget {
  @override
  SettingAppbarState createState() => SettingAppbarState();
}

class SettingAppbarState extends State<SettingAppbar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text('Latihan Pertemuan Kedua'),
      actions: <Widget>[
          IconButton(
            icon: Icon(Icons.home),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.chat_bubble),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.build),
            onPressed: () {},
          ),
        ],
       ),
      drawer: _buildDrawer(),
    );
  }

  Widget _buildDrawer() {
    return SizedBox(
      width: MediaQuery.of(context).size.width/1.2,
      child: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
                accountName: Text("Ovando Exha Valendro"),
                accountEmail: Text("ndkappraisal@gmail.com"),
                decoration: BoxDecoration(
                  color: Colors.teal,
                ),
            ),
            _buildListTile(Icons.message, "Pesan", null),
            _buildListTile(Icons.person, "Tentang Saya", null),
            _buildListTile(Icons.settings, "Pengaturan", null),
            Divider(
              height: 2.0,
            ),
            _buildListTile(null, "Keluar", Icons.input),
          ],
        ),
      ),
    );
  }

  Widget _buildListTile(
    IconData iconLeading,
    String title,
    IconData iconTrailing,
  ) {
    return ListTile(
      leading: Icon(iconLeading),
      title: Text(title),
      trailing: Icon(iconTrailing),
      onTap: () {},
    );
  }
}