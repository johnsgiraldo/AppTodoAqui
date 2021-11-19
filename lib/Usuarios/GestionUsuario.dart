
import 'package:flutter/material.dart';

class GestionUsuario extends StatefulWidget{
  @override
  GestionUsuarioApp createState() => GestionUsuarioApp();
}

class GestionUsuarioApp extends State<GestionUsuario>{
  @override
  Widget build(BuildContext context){

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
            Padding(padding: EdgeInsets.only(left: 5,top: 10,right: 20,bottom: 0),
              child: Center(
                child: ElevatedButton(onPressed: (){
                },
                  style: ElevatedButton.styleFrom(minimumSize: Size(200, 45),primary: Colors.teal),
                  child: Text("Login"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}