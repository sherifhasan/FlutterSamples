import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Car {
  final String title;
  final String description;

  Car(this.title, this.description);
}

void main() {
  runApp(MaterialApp(
    title: 'Passing Data',
    home: CarsScreen(
      cars: List.generate(
        50,
        (i) => Car(
              'Car ${i + 1}',
              'description ${i + 1}',
            ),
      ),
    ),
  ));
}

class CarsScreen extends StatelessWidget {
  final List<Car> cars;

  CarsScreen({Key key, @required this.cars}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pass Data between widgets'),
      ),
      body: ListView.builder(
        itemCount: cars.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: new Icon(Icons.alarm),
            title: Text(cars[index].title),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailScreen(todo: cars[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class DetailScreen extends StatelessWidget {
  // Declare a field that holds the Todo
  final Car todo;

  // In the constructor, require a Todo
  DetailScreen({Key key, @required this.todo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${todo.title}"),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Text('${todo.description}'),
      ),
    );
  }
}
