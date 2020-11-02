import 'package:flutter/material.dart';
import 'form/register.dart';

class App extends StatelessWidget {
  Widget build(context) {
    return MaterialApp(
      title: 'Registrasi',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Registrasi'),
        ),
        body: RegisterScreen(),
      ),
    );
  }
}
