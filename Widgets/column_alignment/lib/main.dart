import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Column Alignmnet"),
        ),
        body: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            // column 1
            // Start Alignmnet
            // size fill
            Container(
              color: Colors.red,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Icon(Icons.star, size: 50),
                  Icon(Icons.star, size: 50),
                  Icon(Icons.star, size: 50),
                ],
              ),
            ),
            // column 2
            // center Alignmnet
            // size wrap content
            Container(
              color: Colors.blue,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.star, size: 50),
                  Icon(Icons.star, size: 50),
                  Icon(Icons.star, size: 50),
                ],
              ),
            ),
            // column 3
            // center Alignmnet
            // size fill
            Container(
              color: Colors.blue,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Icon(Icons.star, size: 50),
                  Icon(Icons.star, size: 50),
                  Icon(Icons.star, size: 50),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
