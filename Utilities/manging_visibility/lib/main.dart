import 'package:flutter/material.dart';
import 'package:manging_visibility/visibility.dart';

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
          title: Text('Manging Visibility'),
        ),
        body: VisibilityWidget(
          visibility: VisibilityFlag.gone,
          child: Center(
              child: Container(
            color: Colors.red,
          )),
        ),
      ),
    );
  }
}
