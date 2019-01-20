import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = 'Opacity Example';
    return MaterialApp(
        title: title,
        home: Scaffold(
          appBar: AppBar(
            title: Text(title),
          ),
          body: Stack(
            children: <Widget>[
              Image.network(
                'https://upload.wikimedia.org/wikipedia/commons/2/23/Lake_mapourika_NZ.jpeg',
                fit: BoxFit.cover,
                height: 315,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Container(
                    color: Colors.transparent,
                  ),
                  Opacity(
                    opacity: 0.6,
                    child: new Container(
                      height: 30,
                      decoration: new BoxDecoration(
                        color: Colors.black,
                      ),
                      child: Center(
                        child: Text(
                          "Wonderful Lake",
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ));
  }
}
