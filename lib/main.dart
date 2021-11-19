import 'package:flutter/material.dart';
import 'package:todoaqui/Negocios/ShopList.dart';
import 'package:todoaqui/Busqueda.dart';
import 'package:todoaqui/Negocios/RegistroNegocio.dart';
import 'package:todoaqui/Usuarios/GestionUsuario.dart';
import 'package:firebase_core/firebase_core.dart';
// Uncomment lines 7 and 10 to view the visual layout at runtime.
// import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;

/*void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp();
  // debugPaintSizeEnabled = true;
  runApp(Home());
}*/

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: Index());
  }
}

class Index extends StatefulWidget {
  @override
  IndexStart createState() => IndexStart();
}


class IndexStart extends State<Index> {
  @override
  Widget build(BuildContext context) {
    Widget searchSection = Container(
        child: Column(children: <Widget>[
      Padding(
        padding: EdgeInsets.only(left: 25, top: 25, right: 25, bottom: 2),
        child: TextField(
          decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Busqueda',
              hintText: 'Palabra clave de la busqueda'),
        ),
      ),
      Padding(
          padding: EdgeInsets.only(),
          child: ElevatedButton(
            onPressed: () {
              print('Presione el boton');
            },
            child: Text('Buscar'),
            style: ElevatedButton.styleFrom(
              primary: Colors.teal,
            ),
          )),
    ]));

    Widget imagesSection = Container(
      color: Colors.orange[50],
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 25, top: 2, right: 25, bottom: 2),
            child: Center(
              child: Container(
                  width: 300,
                  height: 150,
                  child: Image.asset('image/Promo.png')),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 25, top: 2, right: 25, bottom: 2),
            child: Center(
                child: Container(
                    width: 400,
                    height: 150,
                    child: Image.asset('image/Productos.png'))),
          ),
          Padding(
            padding: EdgeInsets.only(left: 25, top: 2, right: 25, bottom: 20),
            child: Center(
                child: Container(
                    width: 300,
                    height: 150,
                    child: Image.asset('image/Servicios.jpg'))),
          ),
        ],
      ),
    );

    Color color = Theme.of(context).primaryColor;

    Widget buttonSection = Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildButtonColumn(color, Icons.home, 'Inicio'),
          _buildButtonColumn(color, Icons.find_in_page, 'Buscar'),
          _buildButtonColumn(color, Icons.add_alert, 'Alertas'),
          _buildButtonColumn(color, Icons.supervised_user_circle, 'Usuario'),
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

    Widget busquedaSection = Container(
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        Padding(
          padding: EdgeInsets.only(),
          child: TextField(
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Busqueda',
                hintText: 'Palabra clave de la busqueda'),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(),
          child: ElevatedButton(
            onPressed: () {
              print('Presione el boton');
            },
            child: Text('Buscar'),
            style: ElevatedButton.styleFrom(
              primary: Colors.teal,
            ),
          ),
        )
      ]),
    );

    Widget ensaySection = Container(
      color: Colors.teal[50],
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
              padding: EdgeInsets.only(),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Busqueda',
                    hintText: 'Palabra clave de la busqueda'),
              )),
          Padding(
              padding: EdgeInsets.only(),
              child: IconButton(
                icon: const Icon(Icons.find_in_page),
                color: Colors.teal,
                onPressed: () {
                  print('Presione el boton');
                },
              )),
        ],
      ),
    );

    return MaterialApp(
      title: 'TodoAqui',
      home: Scaffold(
        backgroundColor: Colors.orange[50],
        appBar: AppBar(
          title: Text('TodoAqui'),
          backgroundColor: Colors.teal[100],
        ),
        body: ListView(
          children: [
            searchSection,
            //ensaySection,
            imagesSection,
            botonSection,
          ],
        ),
      ),
    );
  }

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: Colors.teal),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: Colors.teal,
            ),
          ),
        ),
      ],
    );
  }
}
