import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: MyApp(),
    ));

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Clipper in Flutter'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            // clip the container as rectangel
            ClipRect(
              child: Container(
                color: Colors.red,
                width: 150.0,
                height: 150.0,
              ),
            ),
            // clip the container as Oval shape
            ClipOval(
              child: Container(
                color: Colors.yellow,
                width: 150.0,
                height: 150.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
