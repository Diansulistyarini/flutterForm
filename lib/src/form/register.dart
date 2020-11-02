import 'package:flutter/material.dart';
import '../valid/validate.dart';

class RegisterScreen extends StatefulWidget {
  createState() {
    return RegisterScreenState();
  }
}

class RegisterScreenState extends State<RegisterScreen> with Validate{

  final formisi = GlobalKey<FormState>();

  String nama ='';
  String ttl ='';
  String email ='';
  String password ='';

  Widget build(context) {
    return Container(
      margin: EdgeInsets.all(15.0), //SET MARGIN DARI CONTAINER 
      child: Form( 
        key: formisi,
        child: Column( 
          children: [
            nameField(),
            ttlField(),
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
        labelText: 'Nama' 
      ),
        validator: validateName,
        onSaved: (String value){
          nama = value;
        }
    );
  }

  Widget ttlField() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: 'Jenis Kelamin' 
      ),
        validator: validatettl,
        onSaved: (String value){
          ttl= value;
        }
    );
  }

  Widget emailField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        labelText: 'Email',
        hintText: 'anisa@example.com',
      ),
      validator: validateEmail,
        onSaved: (String value){
          email = value;
        }
    );
  }

  Widget passwordField() {
    return TextFormField(
      obscureText: true, //KETIKA obsecureText bernilai TRUE
      //MAKA SAMA DENGAN TYPE PASSWORD PADA HTML
      decoration: InputDecoration(
        labelText: 'Password',
        hintText: 'Enter Password',
      ),
      validator: validatePassword,
        onSaved: (String value){
          password = value;
        }
    );
  }

  Widget registerButton() {
    return RaisedButton(
      color: Colors.blueAccent,
      onPressed: () {
        if(formisi.currentState.validate())
          formisi.currentState.save();

          print('Nama : $nama');
          print('Jenis Kelamin : $ttl');
          print('Email : $email');
          print('Password : Secret');
        },
      child: Text('Register'),
    );
  }
}