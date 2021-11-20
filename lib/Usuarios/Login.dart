
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:todoaqui/main.dart';

class Login extends StatefulWidget{
  @override
  LoginApp createState() => LoginApp();
}

class LoginApp extends State<Login>{
  TextEditingController correo=TextEditingController();
  TextEditingController pass=TextEditingController();

  validarDatos() async{
    try{
      CollectionReference ref=FirebaseFirestore.instance.collection("Usuarios");
      QuerySnapshot usuario=await ref.get();

      if(usuario.docs.length !=0){
        int flag=0;
        for(var cursor in usuario.docs){
          //print(cursor.get("Correo"));
          if(cursor.get("Correo")==correo.text){
            //print("Correo encontrado");
            if(cursor.get("Contraseña")==pass.text){
              print("Usuario encontrado");
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) => Home()));
            }
          }
        }
        if(flag==0){
          print("Correo NO encontrado");
        }
      }else{
        print("Coleccion vacia");
      }
    }catch(e){

    }
  }


  @override
  Widget build(BuildContext context){

    return Scaffold(
      backgroundColor: Colors.orange[50],
      appBar: AppBar(
        title: Text("Ingrese Usuario Registrado"),
        backgroundColor: Colors.teal[100],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(padding: EdgeInsets.all(20),
            child: Center(
              child: Container(
                width: 50,
                height: 50,
                child: Image.asset('image/logo.png'),
              ),
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
                controller: pass,
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
                    validarDatos();

                    /*registroUsers();
                    nombre.clear();
                    correo.clear();
                    telefono.clear();
                    contrasena.clear();*/
                    print('Presione el boton');
                  },
                  child: Text('Login'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.teal,
                  ),
                )),
          ],
        ),
      ),
    );
  }
}