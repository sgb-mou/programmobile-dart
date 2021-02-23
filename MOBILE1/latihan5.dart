import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Aplikasi Perhitungan Matematika Dasar',
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text('Latihan 5'),
        centerTitle: true,
      ),
      body: Perkalian(),
    );
  }
}

class Perkalian extends StatefulWidget {
  _Perkalian createState() => _Perkalian();
}

class _Perkalian extends State<Perkalian> {
  final txtangka = TextEditingController();
  final txtangka1 = TextEditingController();

  int _number1 = 0;
  int _number2 = 0;

  void _tambah1() {
    setState(() {
      _number1++;
    });
  }

  void _kurang1() {
    setState(() {
      _number1--;
    });
  }

  void _tambah2() {
    setState(() {
      _number2++;
    });
  }

  void _kurang2() {
    setState(() {
      _number2--;
    });
  }

  void _tampilhasil() {
    setState(() {
      var hasil = _number1 * _number2;
      result = hasil.toString();
    });
  }
  String result = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                SizedBox(
                  height: 120,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 0),
                  child: Text(
                    '$_number1',
                    style: TextStyle(fontSize: 30),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 0),
                  child: Text(
                    'x',
                    style: TextStyle(fontSize: 30),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 0),
                  child: Text(
                    '$_number2',
                    style: TextStyle(fontSize: 30),
                  ),
                ),
                SizedBox(
                  height: 120,
                ),
              ],
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(0),
                  child: new FloatingActionButton(
                    child: Icon(Icons.add),
                    backgroundColor: Colors.green,
                    onPressed: _tambah1,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(0),
                  child: new FloatingActionButton(
                    child: Icon(Icons.remove),
                    backgroundColor: Colors.red,
                    onPressed: _kurang1,
                  ),
                ),
                SizedBox(width: 120),
                Padding(
                  padding: EdgeInsets.all(0),
                  child: new FloatingActionButton(
                    child: Icon(Icons.add),
                    backgroundColor: Colors.green,
                    onPressed: _tambah2,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(0),
                  child: new FloatingActionButton(
                    child: Icon(Icons.remove),
                    backgroundColor: Colors.red,
                    onPressed: _kurang2,
                  ),
                ),
              ],
            ),
          ),
          Padding(
              padding: EdgeInsets.all(0),
              child: Text("$result", style: TextStyle(fontSize: 50))),
          RaisedButton(
            onPressed: _tampilhasil,
            color: Colors.grey,
            textColor: Colors.white,
            child: Text('Hitung'),
          ),
        ],
      ),
    ));
  }
}
