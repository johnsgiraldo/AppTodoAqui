
import 'package:flutter/material.dart';
import 'package:todoaqui/Busqueda.dart';
import 'package:todoaqui/main.dart';
import 'package:todoaqui/ShopList.dart';
import 'package:cloud_firestore/cloud_firestore.dart';



class Registro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: RegistroNegocio());
  }
}

class RegistroNegocio extends StatefulWidget{
  @override
  RegistroNegocioApp createState() => RegistroNegocioApp();
}

class RegistroNegocioApp extends State<RegistroNegocio> {
  final firebase = FirebaseFirestore.instance;
  TextEditingController nombreTienda = TextEditingController();
  TextEditingController direccion = TextEditingController();
  TextEditingController telefono = TextEditingController();

  registroTienda() async{
    try{
      await firebase
          .collection("Negocios")
          .doc()
          .set({
        "nombreTienda":nombreTienda.text,
        "Direccion":direccion.text,
        "Telefono":telefono.text,
        "Estado":true,
      });
    }
    catch(e){
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.orange[50],
      appBar: AppBar(
        title: Text("Creacion de Negocios"),
        backgroundColor: Colors.teal[100],
      ),
       body: Container(
            child: Column(children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: 25, top: 25, right: 25, bottom: 2),
                child: TextField(
                  controller: nombreTienda,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15)
                      ),
                      labelText: 'Nombre del Negocio',
                      hintText: 'Palabra clave de la busqueda'),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 25, top: 25, right: 25, bottom: 2),
                child: TextField(
                  controller: direccion,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15)
                      ),
                      labelText: 'Direccion',
                      hintText: 'Palabra clave de la busqueda'),
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
                      hintText: 'Palabra clave de la busqueda'),
                ),
              ),
              Padding(
                  padding: EdgeInsets.only(),
                  child: ElevatedButton(
                    onPressed: () {

                      registroTienda();
                      nombreTienda.clear();
                      direccion.clear();
                      telefono.clear();
                      print('Presione el boton');
                    },
                    child: Text('Crear Negocio'),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.teal,
                    ),
                  )),
            ])),
    );
  }
}


