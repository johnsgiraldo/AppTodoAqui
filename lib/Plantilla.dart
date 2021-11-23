
import 'package:flutter/material.dart';

class CambioPass extends StatefulWidget{
  @override
  CambioPassApp createState() => CambioPassApp();
}

class CambioPassApp extends State<CambioPass>{
  @override
  Widget build(BuildContext context){

    return Scaffold(
      backgroundColor: Colors.orange[50],
      appBar: AppBar(
        title: Text("Cambio Contraseña"),
        backgroundColor: Colors.teal[100],
      ),
      body: SingleChildScrollView(

      ),
    );
  }
}