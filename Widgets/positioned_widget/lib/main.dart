import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter positioned Widget',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter positioned Widget'),
        ),
        body: Stack(
          children: <Widget>[
            Positioned(
              right: 40,
              top: 40,
              width: 100,
              height: 100,
              child: Container(
                color: Colors.red,
              ),
            ),
            Positioned(
              left: 40,
              top: 40,
              width: 100,
              height: 100,
              child: Container(
                color: Colors.blue,
              ),
            ),
            Positioned(
              right: 40,
              bottom: 40,
              width: 100,
              height: 100,
              child: Container(
                color: Colors.green,
              ),
            ),
            Positioned(
              left: 40,
              bottom: 40,
              width: 100,
              height: 100,
              child: Container(
                color: Colors.yellow,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
