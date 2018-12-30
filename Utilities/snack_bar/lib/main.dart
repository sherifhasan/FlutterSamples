import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Snack bar Example'),
      ),

      /// We use [Builder] here to use a [context] that is a descendant of [Scaffold]
      /// or else [Scaffold.of] will return null
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Builder(
            builder: (context) => Center(
                  child: RaisedButton(
                    child: const Text('Show Snackbar with Action'),
                    onPressed: () => _showSnackbarWithAction(context),
                  ),
                ),
          ),
          Builder(
            builder: (context) => Center(
                  child: RaisedButton(
                    child: const Text('Show Snackbar without Action'),
                    onPressed: () => _showSnackbar(context),
                  ),
                ),
          ),
        ],
      ),
    );
  }

  _showSnackbar(BuildContext context) {
    final scaffold = Scaffold.of(context);
    scaffold.showSnackBar(
      SnackBar(backgroundColor: Colors.red,
        duration: Duration(seconds: 5),
        content: const Text('Noraml snackbar'),
      ),
    );
  }

  _showSnackbarWithAction(BuildContext context) {
    final scaffold = Scaffold.of(context);
    scaffold.showSnackBar(
      SnackBar(
        content: const Text('Snackbar with Action'),
        action: SnackBarAction(
            label: 'Hide', onPressed: scaffold.hideCurrentSnackBar),
      ),
    );
  }
}
