import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flexible Widget Example'),
        ),
        body: Column(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            //Flex here represents the weight that widget will take
            Flexible(
              flex: 2,
              child: new Container(
                color: Colors.indigo,
              ),
            ),
            Flexible(
              flex: 1,
              child: new Container(
                color: Colors.green,
              ),
            ),
            Flexible(
              flex: 3,
              child: new Container(
                color: Colors.deepOrange,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
