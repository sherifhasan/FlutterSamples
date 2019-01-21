import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = 'Text overflow';
    return MaterialApp(
        title: title,
        home: Scaffold(
            appBar: AppBar(
              title: Text(title),
            ),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                buildRow(TextOverflow.clip),
                buildRow(TextOverflow.ellipsis),
              ],
            )));
  }

  Row buildRow(TextOverflow overflow) {
    return Row(
      children: <Widget>[
        Icon(
          Icons.star,
          size: 54,
        ),
        Icon(
          Icons.star,
          size: 54,
        ),
        Icon(
          Icons.star,
          size: 54,
        ),
        Flexible(
          child: Text(
            'This very large sentence wrap it with  Text overflow',
            overflow: overflow,
            style: TextStyle(
                color: Colors.blue, fontWeight: FontWeight.bold, fontSize: 28),
          ),
        )
      ],
    );
  }
}
