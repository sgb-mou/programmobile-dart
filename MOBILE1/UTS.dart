import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    home: new Halutama(),
    title: 'UTS',
  ));
}

class Halutama extends StatelessWidget {
  @override
  Widget build(context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey,
          title: Text('BERANDA'),
          centerTitle: true,
        ),
        body: BerandaScreen(),
      ),
    );
  }
}

class BerandaScreen extends StatelessWidget {
  @override
  Widget build(context) {
    return Center(
      child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
        RaisedButton(
          color: Colors.grey,
          child: Text('Biodata', style: TextStyle(fontSize: 15)),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Haldua()),
            );
          },
        ),
        RaisedButton(
          color: Colors.grey,
          child: Text('Volume', style: TextStyle(fontSize: 15)),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Haltiga()),
            );
          },
        ),
      ]),
    );
  }
}

class Haldua extends StatelessWidget {
  Widget build(context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey,
          title: Text('BIODATA'),
          centerTitle: true,
        ),
        body: RegisterScreen(),
      ),
    );
  }
}

class RegisterScreen extends StatefulWidget {
  createState() {
    return RegisterScreenState();
  }
}

class RegisterScreenState extends State<RegisterScreen> with Validation {
  final formKey = GlobalKey<FormState>();
  String name = '';
  String alamat = '';
  String email = '';
  String password = '';

  Widget build(context) {
    return Container(
      margin: EdgeInsets.all(20.0),
      child: Form(
          key: formKey,
          child: Column(
            children: [
              nameField(),
              alamatField(),
              emailField(),
              passwordField(),
              registerButton(),
              kembaliButton(),
            ],
          )),
    );
  }

  Widget nameField() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Nama Lengkap'),
      validator: validateName,
      onSaved: (String value) {
        name = value;
      },
    );
  }

  Widget alamatField() {
    return TextFormField(
      minLines: 3,
      maxLines: 8,
      decoration: InputDecoration(labelText: 'Alamat Lengkap'),
      validator: validateAlamat,
      onSaved: (String value) {
        alamat = value;
      },
    );
  }

  Widget emailField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        labelText: 'Email',
        hintText: 'email@example.com',
      ),
      validator: validateEmail,
      onSaved: (String value) {
        email = value;
      },
    );
  }

  Widget passwordField() {
    return TextFormField(
      obscureText: true,
      decoration: InputDecoration(
        labelText: 'Password',
        hintText: 'Enter Password',
      ),
      validator: validatePassword,
      onSaved: (String value) {
        password = value;
      },
    );
  }

  Widget registerButton() {
    return RaisedButton(
      color: Colors.grey,
      onPressed: () {
        if (formKey.currentState.validate()) {
          formKey.currentState.save();
        }
      },
      child: Text('Daftar'),
    );
  }

  Widget kembaliButton() {
    return RaisedButton(
      color: Colors.grey,
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Halutama()),
        );
      },
      child: Text('Kembali'),
    );
  }
}

class Validation {
  String validatePassword(String value) {
    if (value.length < 4) {
      return 'Password Minimal 4 Karakter';
    }
    return null;
  }

  String validateAlamat(String value) {
    if (value.isEmpty) {
      return 'Alamat Harus Diisi';
    }
    return null;
  }

  String validateEmail(String value) {
    if (!value.contains('@')) {
      return 'Email tidak valid';
    }
    return null;
  }

  String validateName(String value) {
    if (value.isEmpty) {
      return 'Nama Lengkap Harus Diisi';
    }
    return null;
  }
}

class Haltiga extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey,
          title: Text('VOLUME BALOK'),
          centerTitle: true,
        ),
        body: Hitung(),
      ),
    );
  }
}

class Hitung extends StatefulWidget {
  _HitungState createState() => _HitungState();
}

class _HitungState extends State<Hitung> {
  final txtpanjang = TextEditingController();
  final txtlebar = TextEditingController();
  final txttinggi = TextEditingController();

  String hasil = '';

  onhitung() {
    setState(() {
      var volume = (int.parse(txtpanjang.text) *
          int.parse(txtlebar.text) *
          int.parse(txttinggi.text));
      hasil = "Volemenya $volume";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20.0),
      child: Column(
        children: <Widget>[
          TextField(
            controller: txtpanjang,
            decoration: InputDecoration(hintText: 'Panjang'),
          ),
          TextField(
            controller: txtlebar,
            decoration: InputDecoration(hintText: 'Lebar'),
          ),
          TextField(
            controller: txttinggi,
            decoration: InputDecoration(hintText: 'Tinggi'),
          ),
          Text(hasil, style: TextStyle(fontSize: 16)),
          RaisedButton(
            onPressed: onhitung,
            color: Colors.grey,
            padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
            child: Text('Hitung'),
          ),
          RaisedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Halutama()),
              );
            },
            color: Colors.grey,
            padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
            child: Text('Kembali'),
          ),
        ],
      ),
    );
  }
}
