import 'package:flutter/material.dart';
import 'package:todoaqui/Busqueda.dart';
import 'package:todoaqui/main.dart';
import 'package:todoaqui/Negocios/ShopList.dart';
import 'package:cloud_firestore/cloud_firestore.dart';



class RegistroUsuar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: RegistroUsuario());
  }
}

class RegistroUsuario extends StatefulWidget{
  @override
  RegistroUsuarioApp createState() => RegistroUsuarioApp();
}

class RegistroUsuarioApp extends State<RegistroUsuario> {
  final firebase = FirebaseFirestore.instance;
  TextEditingController nombre = TextEditingController();
  TextEditingController correo = TextEditingController();
  TextEditingController telefono = TextEditingController();
  TextEditingController contrasena = TextEditingController();

  registroUsers() async{
    try{
      await firebase
          .collection("Usuarios")
          .doc()
          .set({
        "Nombre":nombre.text,
        "Correo":correo.text,
        "Telefono":telefono.text,
        "Estado":true,
        "Contraseña":contrasena.text,
      });
      mensaje("Correcto", "Registro Correcto");
    }
    catch(e){
      print(e);
      mensaje("Error", "No se logra Registrar el Usuario"+e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.orange[50],
      appBar: AppBar(
        title: Text("Registro de Usuarios"),
        backgroundColor: Colors.teal[100],
      ),
      body: Container(
          child: Column(children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 25, top: 25, right: 25, bottom: 2),
              child: TextField(
                controller: nombre,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15)
                    ),
                    labelText: 'Nombre',
                    hintText: 'Digite Nombre'),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 25, top: 25, right: 25, bottom: 2),
              child: TextField(
                controller: correo,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15)
                    ),
                    labelText: 'Correo',
                    hintText: 'Digite Correo'),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 25, top: 25, right: 25, bottom: 2),
              child: TextField(
                controller: telefono,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15)
                    ),
                    labelText: 'Telefono',
                    hintText: 'Digite Telefono'),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 25, top: 25, right: 25, bottom: 2),
              child: TextField(
                controller: contrasena,
                obscureText: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15)
                    ),
                    labelText: 'Contraseña',
                    hintText: 'Digite Contraseña'),
              ),
            ),
            Padding(
                padding: EdgeInsets.only(),
                child: ElevatedButton(
                  onPressed: () {

                    registroUsers();
                    nombre.clear();
                    correo.clear();
                    telefono.clear();
                    contrasena.clear();
                    print('Presione el boton');
                  },
                  child: Text('Registrar Usuario'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.teal,
                  ),
                )),
          ])),
    );
  }
  void mensaje(String titulo,String mess){
    showDialog(
        context: context,
        builder: (builcontex){
          return AlertDialog(
            title: Text(titulo),
            content: Text(mess),
            actions: [
              RaisedButton(onPressed: (){
                Navigator.of(context).pop();
              },
              child: Text("Aceptar",
              style: TextStyle(color:Colors.teal),),
              ),
            ],
          );
    });
  }
}