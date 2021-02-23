import 'package:flutter/material.dart';

void main() => runApp(Myapp());

class Myapp extends StatefulWidget {
  @override
  _MyappState createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  var _listkab = [
    'Kab. Asahan',
    'Kab. Batu Bara',
    'Kab. Dairi',
    'Kab. Deli Serdang',
    'Kab. Humbang Hasundutan',
    'Kab. Karo',
    'Kab. Labuhanbatu',
    'Kab. Labuhanbatu Selatan',
    'Kab. Labuhanbatu Utara',
    'Kab. Langkat',
    'Kab. Mandailing Natal',
    'Kab. Nias',
    'Kab. NIas Barat',
    'Kab. Nias Selatan',
    'Kab. Nias Utara',
    'Kab. Padang Lawas',
    'Kab. Padang Lawas Utara',
    'Kab. Pakpak Barat',
    'Kab. Samosir',
    'Kab. Serdang Bedagai',
    'Kab. Simalungun',
    'Kab. Tapanuli Selatan',
    'Kab. Tapanuli Tengah',
    'Kab. Tapanuli Utara',
    'Kab. Toba Samosir',
    'Kota Binjai',
    'Kota GunungSitoli',
    'Kota Medan',
    'Kota Padangsidempuan',
    'Kota Pematangsiantar',
    'Kota Sibolga',
    'Kota Tanjungbalai',
    'Kota Tebing Tinggi'
  ];
  var _kab;
  void _onDropDownItemSelected(newValueSelected) {
    setState(() {
      _kab = newValueSelected;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: new Scaffold(
          appBar: new AppBar(
            backgroundColor: Colors.grey,
            title: Text("Dropdown Menu"),
            centerTitle: true,
          ),
          body: Container(
            margin: EdgeInsets.all(20.0),
            child: Column(
              children: <Widget>[
                DropdownButton(
                  hint: Text("Pilih Kabupaten/Kota"),
                  items: _listkab.map((dropDownStringItem) {
                    return DropdownMenuItem(
                      value: dropDownStringItem,
                      child: Text(dropDownStringItem),
                    );
                  }).toList(),
                  onChanged: (newValueSelected) {
                    _onDropDownItemSelected(newValueSelected);
                  },
                  value: _kab,
                ),
              ],
            ),
            alignment: Alignment.topCenter,
          ),
        ));
  }
}
