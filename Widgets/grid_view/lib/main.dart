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
      home: MyHomePage(title: 'Flutter Gridview Example'),
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
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: new GridView.count(
            crossAxisCount: 2,
            childAspectRatio: 1.0,
            padding: const EdgeInsets.all(4.0),
            mainAxisSpacing: 4.0,
            crossAxisSpacing: 4.0,
            children: <String>[
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
            ].map((String url) {
              return new GridTile(
                  child: new Image.network(url, fit: BoxFit.cover));
            }).toList()));
  }
}
