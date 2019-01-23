import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Swipe to Dismiss',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Swipe to Dismiss'),
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
  var list = List.generate(500, (i) => 'Flutter $i');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: ListView(
          children: list.map((item) {
            return Dismissible(
              direction: DismissDirection.endToStart,
              background: Container(
                color: Colors.red,
                child: Align(
                    alignment: Alignment.centerRight,
                    child: Icon(
                      Icons.delete,
                      color: Colors.white,
                      size: 40,
                    )),
              ),
              onDismissed: (direction) {
                setState(() {
                  list.removeAt(list.indexOf(item));
                });
              },
              key: Key(item),
              child: ListTile(
                leading: FlutterLogo(),
                title: Text(item),
              ),
            );
          }).toList(),
        ));
  }
}
