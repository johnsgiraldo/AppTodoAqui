
import 'package:flutter/material.dart';
import 'package:todoaqui/Usuarios/Login.dart';
import 'RegistroUsuario.dart';
import 'Login.dart';
import 'package:todoaqui/Negocios/RegistroNegocio.dart';
import 'package:todoaqui/Usuarios/GestionUsuario.dart';
import 'package:todoaqui/Negocios/ShopList.dart';
import 'package:todoaqui/Busqueda.dart';
import 'package:todoaqui/main.dart';

class GestionUsuario extends StatefulWidget{
  @override
  GestionUsuarioApp createState() => GestionUsuarioApp();
}

class GestionUsuarioApp extends State<GestionUsuario>{
  @override
  Widget build(BuildContext context){

    //*********Seccion de Botones *************
    Widget botonSection = Container(
      color: Colors.teal[50],
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
              padding: EdgeInsets.only(),
              child: IconButton(
                icon: const Icon(Icons.home),
                color: Colors.teal,
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => Home()));
                  print('Presione el boton');
                },
              )),
          Padding(
              padding: EdgeInsets.only(),
              child: IconButton(
                icon: const Icon(Icons.find_in_page),
                color: Colors.teal,
                onPressed: () {
                  print('Presione el boton');
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => busqueda()));
                },
              )),
          Padding(
              padding: EdgeInsets.only(),
              child: IconButton(
                icon: const Icon(Icons.store),
                color: Colors.teal,
                onPressed: () {
                  print('Presione el boton');
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => ShopList()));
                },
              )),
          Padding(
              padding: EdgeInsets.only(),
              child: IconButton(
                icon: const Icon(Icons.add_business_rounded),
                color: Colors.teal,
                onPressed: () {
                  print('Presione el boton');
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => Registro()));
                },
              )),
          Padding(
              padding: EdgeInsets.only(),
              child: IconButton(
                icon: const Icon(Icons.supervised_user_circle),
                color: Colors.teal,
                onPressed: () {
                  print('Presione el boton');
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => GestionUsuario()));
                },
              )),
        ],
      ),
    );


    return Scaffold(
      backgroundColor: Colors.orange[50],
      appBar: AppBar(
        title: Text("Gestion de Usuario"),
        backgroundColor: Colors.teal[100],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(padding: EdgeInsets.only(left: 5,top: 40,right: 20,bottom: 0),
              child: Center(
                child: ElevatedButton(onPressed: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => RegistroUsuar()));
                },
                  style: ElevatedButton.styleFrom(minimumSize: Size(200, 45),primary: Colors.teal),
                  child: Text("Registro Usuario"),
                ),
              ),
            ),
            Padding(padding: EdgeInsets.only(left: 5,top: 10,right: 20,bottom: 0),
              child: Center(
                child: ElevatedButton(onPressed: (){
                },
                  style: ElevatedButton.styleFrom(minimumSize: Size(200, 45),primary: Colors.teal),
                  child: Text("Cambio Contraseña"),
                ),
              ),
            ),
            Padding(padding: EdgeInsets.only(left: 5,top: 10,right: 20,bottom: 0),
              child: Center(
                child: ElevatedButton(onPressed: (){
                },
                  style: ElevatedButton.styleFrom(minimumSize: Size(200, 45),primary: Colors.teal),
                  child: Text("Darse de baja"),
                ),
              ),
            ),
            Padding(padding: EdgeInsets.only(left: 5,top: 10,right: 20,bottom: 0),
              child: Center(
                child: ElevatedButton(onPressed: (){
                },
                  style: ElevatedButton.styleFrom(minimumSize: Size(200, 45),primary: Colors.teal),
                  child: Text("Modificar Usuario"),
                ),
              ),
            ),
            Padding(padding: EdgeInsets.only(left: 5,top: 10,right: 20,bottom: 330),
              child: Center(
                child: ElevatedButton(onPressed: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => Login()));
                },
                  style: ElevatedButton.styleFrom(minimumSize: Size(200, 45),primary: Colors.teal),
                  child: Text("Login"),
                ),
              ),
            ),
            botonSection,
          ],
        ),
      ),
    );
  }
}