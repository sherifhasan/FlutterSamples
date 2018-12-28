import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Grid view using builder',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Grid view using builder'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var imageList = [
      'https://via.placeholder.com/300.png',
      'https://via.placeholder.com/300.png',
      'https://via.placeholder.com/300.png',
      'https://via.placeholder.com/300.png',
      'https://via.placeholder.com/300.png',
      'https://via.placeholder.com/300.png',
      'https://via.placeholder.com/300.png',
      'https://via.placeholder.com/300.png',
      'https://via.placeholder.com/300.png',
      'https://via.placeholder.com/300.png',
    ];
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: new GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, mainAxisSpacing: 2),
          itemCount: imageList.length,
          itemBuilder: (context, i) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridTile(
                child: new Image.network(imageList[i]),
              ),
            );
          },
        ));
  }
}
