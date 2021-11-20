
import 'package:flutter/material.dart';

class Login extends StatefulWidget{
  @override
  LoginApp createState() => LoginApp();
}

class LoginApp extends State<Login>{
  @override
  Widget build(BuildContext context){

    return Scaffold(
      backgroundColor: Colors.orange[50],
      appBar: AppBar(
        title: Text("Ingrese Usuario Registrado"),
        backgroundColor: Colors.teal[100],
      ),
    );
  }
}