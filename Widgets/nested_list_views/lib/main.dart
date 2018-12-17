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
      home: MyHomePage(title: 'Nested ListViews '),
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
        body: new ListView(
          children: <Widget>[
            Center(
              child: new Text("Fast Food",
                  style:
                      new TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
            ),
            new SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: new Column(
                        children: <Widget>[
                          Icon(
                            Icons.fastfood,
                            size: 64,
                            color: Colors.red,
                          ),
                          new Text("Pizza"),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: new Column(
                        children: <Widget>[
                          Icon(
                            Icons.fastfood,
                            size: 64,
                            color: Colors.red,
                          ),
                          new Text("Hot dog"),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: new Column(
                        children: <Widget>[
                          Icon(
                            Icons.fastfood,
                            size: 64,
                            color: Colors.red,
                          ),
                          new Text("Burger"),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: new Column(
                        children: <Widget>[
                          Icon(
                            Icons.fastfood,
                            size: 64,
                            color: Colors.red,
                          ),
                          new Text("Donuts"),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Center(
              child: new Text("Fruits",
                  style:
                      new TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
            ),
            new SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: new Column(
                        children: <Widget>[
                          Icon(
                            Icons.fastfood,
                            size: 64,
                            color: Colors.red,
                          ),
                          new Text("Guava"),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: new Column(
                        children: <Widget>[
                          Icon(
                            Icons.fastfood,
                            size: 64,
                            color: Colors.red,
                          ),
                          new Text("Strewberry"),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: new Column(
                        children: <Widget>[
                          Icon(
                            Icons.fastfood,
                            size: 64,
                            color: Colors.red,
                          ),
                          new Text("Banana"),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: new Column(
                        children: <Widget>[
                          Icon(
                            Icons.fastfood,
                            size: 64,
                            color: Colors.red,
                          ),
                          new Text("Blueberries"),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: new Column(
                        children: <Widget>[
                          Icon(
                            Icons.fastfood,
                            size: 64,
                            color: Colors.red,
                          ),
                          new Text("Mango"),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: new Column(
                        children: <Widget>[
                          Icon(
                            Icons.fastfood,
                            size: 64,
                            color: Colors.red,
                          ),
                          new Text("Apple"),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Center(
              child: new Text("Vegetables",
                  style:
                      new TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
            ),
            new SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: new Column(
                        children: <Widget>[
                          Icon(
                            Icons.fastfood,
                            size: 64,
                            color: Colors.red,
                          ),
                          new Text("Cucumber"),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: new Column(
                        children: <Widget>[
                          Icon(
                            Icons.fastfood,
                            size: 64,
                            color: Colors.red,
                          ),
                          new Text("Tomato"),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: new Column(
                        children: <Widget>[
                          Icon(
                            Icons.fastfood,
                            size: 64,
                            color: Colors.red,
                          ),
                          new Text("Carrot"),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: new Column(
                        children: <Widget>[
                          Icon(
                            Icons.fastfood,
                            size: 64,
                            color: Colors.red,
                          ),
                          new Text("Onion"),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
