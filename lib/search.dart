import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'funciones.dart';
import 'slide.dart';

// Uncomment lines 7 and 10 to view the visual layout at runtime.
// import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;

//void main () => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Color color = Theme.of(context).primaryColor;
    return MaterialApp(
        title: "TodoAqui",
        home: Scaffold(
          backgroundColor: Colors.orange[50],
          appBar: AppBar(
            title: Text("Todo Aqui"),
            backgroundColor: Colors.teal,
          ),
          body: ListView(
              children: [
                //searchbarsection,
                slidebarsection,
              ],
          ),
        )
    );
  }

  Widget slidebarsection = Container(
    color: Colors.orange[50],
    child: Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(left: 25, top: 20, right: 25, bottom: 20),
          child: Center(
              child: Container(
                child: slidebar(),
              )
          ),
        ),
      ],
    ),
  );

  Widget searchbarsection = Container(
    color: Colors.orange[50],
    child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
        Padding(
            padding: EdgeInsets.only(),
            child: Center(
               child: Container(
                 child: searchbarhome(),
               )
            ),
        ),
      ],
    ),
  );


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

