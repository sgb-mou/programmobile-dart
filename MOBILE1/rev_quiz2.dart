import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'QUIZ',
      debugShowCheckedModeBanner: false,
      home: WelcomePage(),
    );
  }
}

class WelcomePage extends StatefulWidget {
  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  Widget _submitButton() {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => LoginPage()));
      },
      child: Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.symmetric(vertical: 13),
        alignment: Alignment.center,
        color: Colors.grey[700],
        child: Text(
          'MASUK',
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
      ),
    );
  }

  Widget _signUpButton() {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => SignUpPage()));
      },
      child: Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.symmetric(vertical: 13),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey[700], width: 2),
        ),
        child: Text(
          'DAFTAR',
          style: TextStyle(fontSize: 20, color: Colors.grey[700]),
        ),
      ),
    );
  }

  Widget _title() {
    return Text(
      'MouApp',
      textAlign: TextAlign.center,
      style: TextStyle(
          fontWeight: FontWeight.bold, color: Colors.grey[700], fontSize: 30),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          height: MediaQuery.of(context).size.height,
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              _title(),
              SizedBox(
                height: 80,
              ),
              _submitButton(),
              SizedBox(
                height: 20,
              ),
              _signUpButton(),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  Widget _backButton() {
    return InkWell(
      onTap: () {
        Navigator.pop(context);
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(left: 0, top: 10, bottom: 10),
              child: Icon(Icons.keyboard_arrow_left, color: Colors.grey[700]),
            ),
            Text('Kembali',
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500))
          ],
        ),
      ),
    );
  }

  Widget _entryField(String title, {bool isPassword = false}) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            title,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
          ),
          SizedBox(
            height: 10,
          ),
          TextField(
              obscureText: isPassword,
              decoration:
                  InputDecoration(border: InputBorder.none, filled: true))
        ],
      ),
    );
  }

  Widget _submitButton() {
    return RaisedButton(
      onPressed: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Beranda()));
      },
      color: Colors.grey[700],
      child: Center(
        child:
            Text('Masuk', style: TextStyle(color: Colors.white, fontSize: 20)),
      ),
    );
  }

  Widget _divider() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: <Widget>[
          SizedBox(
            width: 20,
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Divider(
                thickness: 1,
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Divider(
                thickness: 1,
              ),
            ),
          ),
          SizedBox(
            width: 20,
          ),
        ],
      ),
    );
  }

  Widget _createAccountLabel() {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => SignUpPage()));
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 20),
        padding: EdgeInsets.all(15),
        alignment: Alignment.bottomCenter,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Tidak memiliki akun ?',
              style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              'Daftar',
              style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 13,
                  fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
    );
  }

  Widget _title() {
    return Text(
      'MouApp',
      textAlign: TextAlign.center,
      style: TextStyle(
          fontWeight: FontWeight.bold, color: Colors.grey[700], fontSize: 30),
    );
  }

  Widget _emailPasswordWidget() {
    return Column(
      children: <Widget>[
        _entryField('Email'),
        _entryField('Password', isPassword: true),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
        body: Container(
      height: height,
      child: Stack(
        children: <Widget>[
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(height: height * .2),
                  _title(),
                  SizedBox(height: 50),
                  _emailPasswordWidget(),
                  SizedBox(height: 20),
                  _submitButton(),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    alignment: Alignment.centerRight,
                    child: Text('Lupa password ?',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w500)),
                  ),
                  _divider(),
                  SizedBox(height: height * .055),
                  _createAccountLabel(),
                ],
              ),
            ),
          ),
          Positioned(top: 40, left: 0, child: _backButton()),
        ],
      ),
    ));
  }
}

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  Widget _backButton() {
    return InkWell(
      onTap: () {
        Navigator.pop(context);
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(left: 0, top: 10, bottom: 10),
              child: Icon(Icons.keyboard_arrow_left, color: Colors.black),
            ),
            Text('Kembali',
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500))
          ],
        ),
      ),
    );
  }

  Widget _entryField(String title, {bool isPassword = false}) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            title,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
          ),
          SizedBox(
            height: 10,
          ),
          TextField(
            obscureText: isPassword,
          )
        ],
      ),
    );
  }

  Widget _submitButton() {
    return RaisedButton(
      onPressed: () {},
      color: Colors.grey[700],
      child: Center(
        child:
            Text('Daftar', style: TextStyle(color: Colors.white, fontSize: 20)),
      ),
    );
  }

  Widget _loginAccountLabel() {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => LoginPage()));
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 20),
        padding: EdgeInsets.all(15),
        alignment: Alignment.bottomCenter,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Sudah memiliki akun ?',
              style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              'Masuk',
              style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 13,
                  fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
    );
  }

  Widget _title() {
    return Text(
      'MouApp',
      textAlign: TextAlign.center,
      style: TextStyle(
          fontWeight: FontWeight.bold, color: Colors.grey[700], fontSize: 30),
    );
  }

  Widget _emailPasswordWidget() {
    return Column(
      children: <Widget>[
        _entryField('Username'),
        _entryField('Email'),
        _entryField('Password', isPassword: true),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        height: height,
        child: Stack(
          children: <Widget>[
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(height: height * .2),
                    _title(),
                    SizedBox(
                      height: 50,
                    ),
                    _emailPasswordWidget(),
                    SizedBox(
                      height: 20,
                    ),
                    _submitButton(),
                    SizedBox(height: height * .14),
                    _loginAccountLabel(),
                  ],
                ),
              ),
            ),
            Positioned(top: 40, left: 0, child: _backButton()),
          ],
        ),
      ),
    );
  }
}

class Beranda extends StatefulWidget {
  Beranda({Key key}) : super(key: key);

  @override
  _BerandaState createState() => _BerandaState();
}

class _BerandaState extends State<Beranda> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: <Widget>[
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.only(left: 0, top: 10, bottom: 10),
                        child: Icon(Icons.keyboard_arrow_left,
                            color: Colors.grey[700]),
                      ),
                      Text('Kembali',
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w500))
                    ],
                  ),
                ),
              ),
              Row(
                children: <Widget>[
                  SizedBox(width: 20),
                  Text(
                    'Ovando Nadeak',
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w800,
                        color: Colors.grey[700]),
                  )
                ],
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Expanded(
                        child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Mou\nGame, Tidur, Makan\nIts kind of neat',
                          style: TextStyle(color: Colors.black, height: 1.3),
                        ),
                        SizedBox(height: 12),
                        Text(
                          '#Mou #Gamer',
                          style: TextStyle(
                              color: Colors.black,
                              height: 1.3,
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    )),
                    Column(
                      children: <Widget>[
                        Text('2.2 Jt',
                            style:
                                TextStyle(fontSize: 18, color: Colors.black)),
                        Text('Pengikut',
                            style:
                                TextStyle(fontSize: 16, color: Colors.black)),
                        SizedBox(height: 20),
                        Text('2003',
                            style:
                                TextStyle(fontSize: 18, color: Colors.black)),
                        Text('Kiriman',
                            style:
                                TextStyle(fontSize: 16, color: Colors.black)),
                        SizedBox(height: 10),
                        SizedBox(
                          height: 30,
                          child: RaisedButton(
                            onPressed: () {},
                            color: Colors.grey[700],
                            textColor: Colors.white,
                            child: Text('Ikuti'),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 120),
              RaisedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ProfilePage()),
                  );
                },
                color: Colors.grey[700],
                textColor: Colors.white,
                child: Text('Profile'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ProfilePage extends StatelessWidget {
  final List<String> imageList = [
    'https://raw.githubusercontent.com/sgb-mou/programmobile-dart/master/PICUTS/%20(1).JPG',
    'https://raw.githubusercontent.com/sgb-mou/programmobile-dart/master/PICUTS/%20(2).JPG',
    'https://raw.githubusercontent.com/sgb-mou/programmobile-dart/master/PICUTS/%20(3).JPG',
    'https://raw.githubusercontent.com/sgb-mou/programmobile-dart/master/PICUTS/%20(4).JPG',
    'https://raw.githubusercontent.com/sgb-mou/programmobile-dart/master/PICUTS/%20(5).JPG',
    'https://raw.githubusercontent.com/sgb-mou/programmobile-dart/master/PICUTS/%20(6).JPG',
    'https://raw.githubusercontent.com/sgb-mou/programmobile-dart/master/PICUTS/%20(7).JPG',
    'https://raw.githubusercontent.com/sgb-mou/programmobile-dart/master/PICUTS/%20(8).JPG',
    'https://raw.githubusercontent.com/sgb-mou/programmobile-dart/master/PICUTS/%20(9).JPG',
  ];
  Widget _profileCard(context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Hero(
              tag: Key(
                  'https://raw.githubusercontent.com/sgb-mou/programmobile-dart/master/PICUTS/PICON.jpg'),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(60)),
                ),
                child: CircleAvatar(
                  radius: 60,
                  backgroundImage: NetworkImage(
                      'https://raw.githubusercontent.com/sgb-mou/programmobile-dart/master/PICUTS/PICON.jpg'),
                ),
              ),
            ),
            SizedBox(width: 30),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Ovando Nadeak',
                    style: TextStyle(
                        color: Colors.grey[700],
                        fontSize: 30,
                        fontWeight: FontWeight.w800),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 22),
                        child: Center(
                          child: Column(
                            children: <Widget>[
                              Text('2.2 Jt', style: TextStyle(fontSize: 18)),
                              Text('Pengikut', style: TextStyle(fontSize: 16)),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 22),
                        child: Column(
                          children: <Widget>[
                            Text('2003', style: TextStyle(fontSize: 18)),
                            Text('Kiriman', style: TextStyle(fontSize: 16)),
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              '#Mou #Gamer',
              style: TextStyle(
                  color: Colors.black,
                  height: 1.3,
                  fontWeight: FontWeight.w600),
            ),
            Padding(
              padding: EdgeInsets.only(right: 40),
              child: SizedBox(
                height: 30,
                child: RaisedButton(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  onPressed: () {},
                  color: Colors.grey[700],
                  textColor: Colors.white,
                  child: Text('Ikuti'),
                ),
              ),
            )
          ],
        ),
        SizedBox(height: 30),
        Text(
          'Mou\nGame, Tidur, Makan\nIts kind of neat',
          style: TextStyle(color: Colors.black, height: 1.3),
        ),
      ],
    );
  }

  Widget _postButton(context) {
    return RaisedButton(
      onPressed: () {},
      color: Colors.grey[700],
      child: Center(
        child:
            Text('KIRIM', style: TextStyle(color: Colors.white, fontSize: 18)),
      ),
    );
  }

  Widget _photoGrid(context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 5,
          mainAxisSpacing: 5,
          childAspectRatio: 1.1),
      itemCount: 18,
      itemBuilder: (context, index) {
        return Card(
          child: Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(imageList[index % 8]),
                fit: BoxFit.cover,
              ),
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 30),
              _profileCard(context),
              SizedBox(height: 20),
              _postButton(context),
              Expanded(
                child: _photoGrid(context),
              )
            ],
          ),
        ),
      ),
    );
  }
}
