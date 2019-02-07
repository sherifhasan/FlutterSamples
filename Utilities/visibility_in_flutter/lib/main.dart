import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Visiblity Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Visiblity'),
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
  bool _isVisible = true;

  String _buttonText = 'Hide';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Visibility(
              child: Text("Hello World !",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
              visible: _isVisible,
            ),
            RaisedButton(
              child: Text(_buttonText),
              onPressed: () {
                setState(() {
                  if (_isVisible) {
                    _isVisible = false;
                    _buttonText = 'Show';
                  } else {
                    _isVisible = true;
                    _buttonText = 'Hide';
                  }
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
