import 'package:flutter/material.dart';
import 'main.dart';
import 'package:firebase_core/firebase_core.dart';
// Uncomment lines 7 and 10 to view the visual layout at runtime.
// import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;

void main() {
  // debugPaintSizeEnabled = true;
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp();
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: LoadPage()
    );
  }
}


class LoadPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TodoAqui',
      home: Scaffold(
        backgroundColor: Colors.orange[50],
        body: Center(
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 300),
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
                      return Home();
                    }
                    ));

                  },
                  child: Center(child: Image.asset('image/logo.png')),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(25),
                child: Column(children: [
                  ElevatedButton(onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
                      return Home();
                    }
                    ));

                  },
                      child: const Text('Entrar')),
                ]),
              ),],
          ),
        ),
      ),
    );
  }
}
