import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class slidebar extends StatefulWidget {
  const slidebar({Key? key}) : super(key: key);

  @override
  State<slidebar> createState() => _slidebarState();
}


/// This is the private State class that goes with slidebar.
class _slidebarState extends State<slidebar> {
  double _currentSliderValue = 20;

  @override
  Widget build(BuildContext context) {
    return Slider(
      value: _currentSliderValue,
      min: 0,
      max: 100,
      divisions: 5,
      label: _currentSliderValue.round().toString(),
      onChanged: (double value) {
        setState(() {
          _currentSliderValue = value;
        });
      },
    );
  }
}

class carousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Color color = Theme
        .of(context)
        .primaryColor;
    return MaterialApp(
        title: "TodoAqui",
        home: Scaffold(
            backgroundColor: Colors.orange[50],
            appBar: AppBar(
              title: Text("Todo Aqui"),
              backgroundColor: Colors.teal,
            ),
            body: //slidebar(),
                  CarouselSlider(
                  items:[
                    Padding(
                       padding: const EdgeInsets.all(20.0),
                       child: Text('Android'),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Text('iOS'),
                    ),
                    Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text('Desktop'),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Text('Web'),
                    )
                  ],
                  options: CarouselOptions(
                    autoPlay: true,
                    height: 100,
                    ),
        )
    ));
  }
}
