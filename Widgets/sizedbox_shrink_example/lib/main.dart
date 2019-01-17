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
            title: Text("Flutter SizedBox.Shrink"),
          ),
          // the allowed space to take is the full screen
          body: Card(
            color: Colors.red,
            child: SizedBox.shrink(
              child: Text(
                'Hello',
                style: TextStyle(fontSize: 45),
              ),
            ),
          ),
        ));
  }
}
