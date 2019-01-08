import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Expanded Widget Example'),
        ),
        body: Column(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            //Flex here represents the weight that widget will take
            Expanded(
              flex: 2,
              child: new Container(
                color: Colors.red,
              ),
            ),
            Expanded(
              flex: 3,
              child: new Container(
                color: Colors.yellow,
              ),
            ),
            Expanded(
              flex: 1,
              child: new Container(
                color: Colors.blue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
