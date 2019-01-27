import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appTitle = 'Opacity Demo';
    return MaterialApp(
      title: appTitle,
      home: MyHomePage(title: appTitle),
    );
  }
}

// The StatefulWidget's job is to take in some data and create a State class.
// In this case, our Widget takes in a title, and creates a _MyHomePageState.
class MyHomePage extends StatefulWidget {
  final String title;

  MyHomePage({Key key, this.title}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

// The State class is responsible for two things: holding some data we can
// update and building the UI using that data.
class _MyHomePageState extends State<MyHomePage> {
  bool _visible = true;
  String action = 'Hide';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Center(
            child: AnimatedOpacity(
              // If the Widget should be visible, animate to 1.0 (fully visible). If
              // the Widget should be hidden, animate to 0.0 (invisible).
              opacity: _visible ? 1.0 : 0.0,
              duration: Duration(milliseconds: 500),
              // The red ball needs to be the child of the AnimatedOpacity
              child: ClipOval(
                child: Container(
                  width: 200.0,
                  height: 200.0,
                  color: Colors.red,
                ),
              ),
            ),
          ),
          RaisedButton(
            color: Colors.blue,
            textColor: Colors.white,
            child: Text(action),
            onPressed: () {
              // Make sure we call setState! This to rebuild the
              // UI with our changes!
              setState(() {
                if (!_visible) {
                  _visible = true;
                  action = 'Hide';
                } else {
                  _visible = false;
                  action = 'Show';
                }
              });
            },
          )
        ],
      ),
    );
  }
}
