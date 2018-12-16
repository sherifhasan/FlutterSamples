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
      home: MyHomePage(title: 'Flutter Navigation Drawer Example'),
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
  String title = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      drawer: new Drawer(
        child: new Container(
          padding: const EdgeInsets.all(16.0),
          color: Colors.white30,
          child: new Column(
            children: <Widget>[
              new ListTile(
                leading: new Icon(Icons.person),
                title: new Text("Sherif Hasan"),
                onTap: () {
                  setState(() {
                    title = "Sherif Hasan";
                  });
                },
              ),
              new Divider(
                color: Colors.grey,
              ),
              new ListTile(
                leading: new Icon(Icons.home),
                title: new Text("Home"),
                onTap: () {
                  setState(() {
                    title = "Home";
                  });
                },
              ),
              new ListTile(
                leading: new Icon(Icons.message),
                title: new Text("Messages"),
                onTap: () {
                  setState(() {
                    title = "Messages";
                  });
                },
              ),
              new ListTile(
                leading: new Icon(Icons.person),
                title: new Text("Profile"),
                onTap: () {
                  setState(() {
                    title = "Profile";
                  });
                },
              ),
            ],
          ),
        ),
      ),
      body: Center(
          child: new Text(
        title,
        style: new TextStyle(fontSize: 45),
      )),
    );
  }
}
