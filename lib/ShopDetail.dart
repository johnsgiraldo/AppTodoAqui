import 'package:flutter/material.dart';
import 'package:todoaqui/Busqueda.dart';
import 'package:todoaqui/main.dart';
import 'package:todoaqui/ShopList.dart';

class Shopdetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: ShopdetailList());
  }
}

class ShopdetailList extends StatefulWidget {
  @override
  ShopdetailListApp createState() => ShopdetailListApp();
}

class ShopdetailListApp extends State<ShopdetailList> {
  @override
  String texto1="Cigarreria Tio Tom";
  String texto2="Bruder";
  final String someText =
      "Nombre: Bruder\n\n"
      "Horario: Lunes a jueves 11:00 - 23:59 y \n\n"
      "         Viernes a domingo 11:00 - 03:00\n\n"
      "Maps: https://goo.gl/maps/zBLu8vgpAkqGtRNa8\n\n"
      "Productos: Hamburguesas, Perros calientes, Pizzas, Carnes, Licores y gaseosas, Alitas\n\n"
      "Servicio: Consumo en el lugar\n\n"
      "Telefono: 6017443444\n\n"
      "Tipo: PUB\n\n"
      "Web: https://www.bruder.com.co/\n\n";
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
          ElevatedButton(onPressed: (){}, child: Text("Info"), style: ElevatedButton.styleFrom(
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

    Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: Text(
            'Nombre: Bruder '
            'Horario: Lunes a jueves 11:00 - 23:59 y Viernes a domingo 11:00 - 03:00 '
            'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
            'half-hour walk through pastures and pine forest, leads you to the '
            'lake, which warms to 20 degrees Celsius in the summer. Activities '
            'enjoyed here include rowing, and riding the summer toboggan run.',
        softWrap: true,
      ),
    );

    Widget textSection2 = Container(
      padding: const EdgeInsets.all(32),
      child: Text(
        someText,
        softWrap: true,
      ),
    );


    return Scaffold(
      backgroundColor: Colors.orange[50],
      appBar: AppBar(
        title: Text("Bruder"),
        backgroundColor: Colors.teal[100],
      ),
      body: ListView(
        children: [
          Image.asset(
            'image/Bruder4.jpg',
            width: 600,
            height: 240,
            fit: BoxFit.cover,
          ),
          //textSection,
          textSection2,
          //titleSection,
          //titleSection2,
          botonSection,
        ],
      ),
    );
  }
}