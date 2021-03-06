import 'package:flutter/material.dart';
import 'package:todoaqui/Busqueda.dart';
import 'package:todoaqui/main.dart';
import 'package:todoaqui/ShopDetail.dart';

class Shop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: ShopList());
  }
}

class ShopList extends StatefulWidget {
  @override
  ShopListApp createState() => ShopListApp();
}

class ShopListApp extends State<ShopList> {
  @override
  String texto1="Cigarreria Tio Tom";
  String texto2="Bruder";
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(15),
      child: Row(
        children: [
          Expanded(
            /*1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*2*/
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(
                    texto1,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'Compras en tienda',
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          /*3*/
          Container(
            width: 70,
            height: 70,
            child: Image.asset('image/Tiotom2.jpg'),
            padding: const EdgeInsets.only(right: 8),
          ),
          ElevatedButton(onPressed: (){}, child: Text("Info"), style: ElevatedButton.styleFrom(
    primary: Colors.teal,
    ),)
        ],
      ),
    );

    Widget titleSection2 = Container(
      padding: const EdgeInsets.only(top:15,left: 15, right: 15,bottom: 450),
      child: Row(
        children: [
          Expanded(
            /*1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*2*/
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(
                    texto2,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'Consumo en el lugar',
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          /*3*/
          Container(
            width: 70,
            height: 70,
            child: Image.asset('image/Bruder.png'),
            padding: const EdgeInsets.only(right: 8),
          ),
          ElevatedButton(onPressed: (){
            Navigator.push(context,
                MaterialPageRoute(builder: (_) => Shopdetail()));
          }, child: Text("Info"), style: ElevatedButton.styleFrom(
            primary: Colors.teal,
          ),)
        ],
      ),
    );

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
                  print('Presione el boton');
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => Home()));
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
                icon: const Icon(Icons.supervised_user_circle),
                color: Colors.teal,
                onPressed: () {
                  print('Presione el boton');
                },
              )),
        ],
      ),
    );


    return Scaffold(
      backgroundColor: Colors.orange[50],
      appBar: AppBar(
        title: Text("Lista de tiendas"),
        backgroundColor: Colors.teal[100],
      ),
      body: ListView(
        children: [
          titleSection,
          titleSection2,
          botonSection,
        ],
      ),
    );
  }
}