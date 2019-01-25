import 'package:flutter/material.dart';
import 'package:hero_animation_listview/build_item.dart';

void main() => runApp(MaterialApp(
      home: MyApp(),
    ));

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final imageUrl1 =
      'https://upload.wikimedia.org/wikipedia/commons/8/84/Lake_Bled_from_the_Mountain.jpg';
  final imageUrl2 =
      'https://upload.wikimedia.org/wikipedia/commons/2/23/Lake_mapourika_NZ.jpeg';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Hero Animation'),
        ),
        body: ListView(children: <Widget>[
          BuildItem(imageUrl: imageUrl1, heroTag: "tag1"),
          BuildItem(imageUrl: imageUrl2, heroTag: "tag2"),
          BuildItem(imageUrl: imageUrl1, heroTag: "tag3"),
          BuildItem(imageUrl: imageUrl2, heroTag: "tag4"),
        ]));
  }
}
