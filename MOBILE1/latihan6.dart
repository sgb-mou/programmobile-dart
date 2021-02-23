import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  Widget build(context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey,
          title: Text('Form Registrasi'),
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
          ],
        )
      ),
    );
  }

  Widget nameField() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: 'Nama Lengkap' 
      ),
      validator: validateName,
      onSaved: (String value) {
        name = value;
      },
    );
  }
  
   Widget alamatField() {
    return TextFormField(
      minLines:3,
maxLines:8,
      decoration: InputDecoration(
        labelText: 'Alamat Lengkap' 
      ),
      validator: validateAlamat,
      onSaved: (String value) {
        alamat = value;
      },
    );
  }

  Widget emailField() 
  {
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