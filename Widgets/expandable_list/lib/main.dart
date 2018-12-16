import 'package:flutter/material.dart';

void main() => runApp(
      new MaterialApp(
        title: "Expandable List Example",
        home: new MyApp(),
        debugShowCheckedModeBanner: false,
      ),
    );

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Expandable List Example"),
      ),
      body: new ListView.builder(
        itemCount: vehicles.length,
        itemBuilder: (context, i) {
          return new ExpansionTile(
            title: new Text(
              vehicles[i].title,
              style: new TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic),
            ),
            children: <Widget>[
              new Column(
                children: _buildExpandableContent(vehicles[i]),
              ),
            ],
          );
        },
      ),
    );
  }

  _buildExpandableContent(Food food) {
    List<Widget> columnContent = [];

    for (String content in food.contents)
      columnContent.add(
        new ListTile(
          title: new Text(
            content,
            style: new TextStyle(fontSize: 18.0),
          ),
          leading: new Icon(food.icon),
        ),
      );

    return columnContent;
  }
}

class Food {
  final String title;
  List<String> contents = [];
  final IconData icon;

  Food(this.title, this.contents, this.icon);
}

List<Food> vehicles = [
  new Food(
    'Fruits',
    ['Mango', 'Banana', 'Apple', 'Strawberry'],
    Icons.shopping_basket,
  ),
  new Food(
    'Vegetables',
    ['Tomato', 'Cucumber', 'Carrot', 'Onion'],
    Icons.fastfood,
  ),
];
