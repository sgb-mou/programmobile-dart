import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "MouApps",
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
        leading: IconButton(icon: Icon(IconData(58848, fontFamily: 'MaterialIcons', matchTextDirection: true)), onPressed: () {}),
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
        title: Text(
          'Mou Player',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      endDrawer: _buildDrawer(),
      body: new Center(
        child: new Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            new Icon(IconData(57376, fontFamily: 'MaterialIcons'), color: Colors.grey[900], size: 27.0),
            new Icon(IconData(57399, fontFamily: 'MaterialIcons'), color: Colors.grey[900], size: 50.0),
            new Icon(IconData(0xe01f, fontFamily: 'MaterialIcons'), color: Colors.grey[900], size: 27.0),
          ],
        ),
      ),
    );
  }

  Widget _buildDrawer() {
    return SizedBox(
      width: MediaQuery.of(context).size.width / 1.0,
      child: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            _buildListTile(IconData(59574, fontFamily: 'MaterialIcons'), "Cari", null),
            _buildListTile(IconData(57392, fontFamily: 'MaterialIcons'), "Musik", null),
            _buildListTile(IconData(57418, fontFamily: 'MaterialIcons'), "Film", null),
            _buildListTile(IconData(59576, fontFamily: 'MaterialIcons'), "Pengaturan", null),
            Divider(
              height: 2.0,
            ),
            _buildListTile(null, "Keluar", IconData(59536, fontFamily: 'MaterialIcons', matchTextDirection: true)),
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
      onTap: () {
        Navigator.pop(context);
      },
    );
  }
}