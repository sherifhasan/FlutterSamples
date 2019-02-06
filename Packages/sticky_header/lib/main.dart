import 'package:flutter/material.dart';
import 'package:sticky_headers/sticky_headers.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sticky Headers Example',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: StickyWidget(),
    );
  }
}

class StickyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Sticky Headers Example')),
      body: ListView.builder(itemBuilder: (context, index) {
        return StickyHeader(
            header: Container(
              child: Text("Amazing Header"),
              padding: EdgeInsets.symmetric(horizontal: 16),
              alignment: Alignment.centerLeft,
              height: 50,
              color: Colors.blueGrey[700],
            ),
            content: buildItem(index));
      }),
    );
  }

  Widget buildItem(int index) {
    return Card(
      child: ListTile(
        leading: Icon(Icons.fastfood),
        title: Text('Item $index'),
      ),
    );
  }
}
