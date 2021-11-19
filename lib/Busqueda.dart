
import 'package:flutter/material.dart';

class busqueda extends StatefulWidget{
  @override
  BusquedaApp createState() => BusquedaApp();
}

class BusquedaApp extends State<busqueda>{
  @override
  Widget build(BuildContext context){

    return Scaffold(
      backgroundColor: Colors.orange[50],
      appBar: AppBar(
        title: Text("Resultado de la búsqueda"),
        backgroundColor: Colors.teal[100],
      ),
    );
  }
}