import 'package:flutter/material.dart';
import 'dart:async';
import 'package:shared_preferences/shared_preferences.dart';

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
      home: LoginScreen(title: 'SharedPreferences Example'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);


  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String preferencesName = "";
  @override
  void initState() {
    super.initState();
    _loadName().then((name) {
      preferencesName = name;
    });
  }

  Future<String> _loadName() async {
    final prefs = await SharedPreferences.getInstance();
    String name = "";
    if (prefs.getString("name") != null) {
      name = prefs.getString("name");
    }
    return name;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("SharedPreferences Example"),
        ),
        body: Center(
          child: new Text(
            'Welcome $preferencesName',
            style: new TextStyle(fontSize: 35),
          ),
        ));
  }
}

class LoginScreen extends StatefulWidget {
  LoginScreen({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController _nameController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: new Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: new TextField(
                  controller: _nameController,
                  decoration: new InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      contentPadding:
                          new EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
                      border: new OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(6.0),
                          borderSide: new BorderSide(
                              color: Colors.grey,
                              width: 1.0,
                              style: BorderStyle.solid)),
                      hintText: "Enter Your Name"),
                  keyboardType: TextInputType.text,
                  maxLines: 1,
                ),
              ),
              new MaterialButton(
                color: Colors.blue,
                elevation: 10,
                textColor: Colors.white,
                onPressed: () {
                  if (_nameController.text.isNotEmpty) {
                    saveName(_nameController.text);
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => new MyHomePage()));
                  }
                },
                child: new Text("Enter"),
              )
            ],
          ),
        ));
  }

  Future<Null> saveName(String name) async {
    final preferences = await SharedPreferences.getInstance();
    preferences.setString("name", name);
  }
}
