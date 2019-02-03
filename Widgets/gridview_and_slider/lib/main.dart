import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: MyApp(),
    ));

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  double sliderValue = 1.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Slider(
          min: 1.0,
          max: 3.0,
          activeColor: Colors.pink,
          onChanged: (value) {
            setState(() {
              sliderValue = value;
            });
          },
          value: sliderValue,
        ),
      ),
      body: GridView.count(
        crossAxisCount: sliderValue.toInt(),
        childAspectRatio: 16 / (sliderValue * 10),
        children: <Widget>[
          Card(
            child: Center(child: Text('Data')),
          ),
          Card(
            child: Center(child: Text('Data')),
          ),
          Card(
            child: Center(child: Text('Data')),
          ),
          Card(
            child: Center(child: Text('Data')),
          ),
          Card(
            child: Center(child: Text('Data')),
          ),
          Card(
            child: Center(child: Text('Data')),
          ),
          Card(
            child: Center(child: Text('Data')),
          ),
          Card(
            child: Center(child: Text('Data')),
          ),
          Card(
            child: Center(child: Text('Data')),
          ),
        ],
      ),
    );
  }
}
