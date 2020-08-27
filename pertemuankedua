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
        leading: IconButton(icon: Icon(Icons.arrow_back_ios), onPressed: () {}),
        iconTheme: IconThemeData(
          color: Colors.grey,
        ),
        backgroundColor: Colors.transparent,
        title: Text(
          'Mou Player',
          style: TextStyle(color: Colors.grey),
        ),
        centerTitle: true,
      ),
      endDrawer: _buildDrawer(),
    );
  }

  Widget _buildDrawer() {
    return SizedBox(
      width: MediaQuery.of(context).size.width / 1.0,
      child: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            _buildListTile(Icons.search, "Cari", null),
            _buildListTile(Icons.library_music, "Musik", null),
            _buildListTile(Icons.video_library, "Film", null),
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
      onTap: () {Navigator.pop(context);},
    );
  }
}
