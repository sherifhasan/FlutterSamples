import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new TableExample(),
    );
  }
}

class TableExample extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new TableExampleState();
  }
}

class TableExampleState extends State<TableExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Table View Example"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Table(
          border: TableBorder.all(width: 1.0, color: Colors.black),
          children: [
            TableRow(children: [
              TableCell(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    new Text('ID'),
                    new Text('100'),
                  ],
                ),
              )
            ]),
            TableRow(children: [
              TableCell(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    new Text('Name'),
                    new Text("Sherif Hasan"),
                  ],
                ),
              )
            ]),
            TableRow(children: [
              TableCell(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    new Text('Age'),
                    new Text("24"),
                  ],
                ),
              )
            ]),
          ],
        ),
      ),
    );
  }
}
