import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Orientation builder',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: OrientationBuilder(
          builder: (context, orienation) {
            if (orienation == Orientation.portrait) {
              return Scaffold(
                appBar: AppBar(
                  title: Text("Orientation builder in portrait mode"),
                ),
              );
            } else {
              return Scaffold(
                appBar: AppBar(
                  title: Text("Orientation builder in LandScape mode"),
                ),
              );
            }
          },
        ));
  }
}
