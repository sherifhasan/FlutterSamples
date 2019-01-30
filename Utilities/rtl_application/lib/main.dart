import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final title = 'الرئيسية';

    return MaterialApp(
      title: title,
      builder: (context, child) {
        return Directionality(
          textDirection: TextDirection.rtl,
          child: Builder(
            builder: (context) {
              return new MediaQuery(
                data: MediaQuery.of(context).copyWith(
                  textScaleFactor: 1.0,
                ),
                child: child,
              );
            },
          ),
        );
      },
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Center(
            child: Text(
          'مرحبا بك',
          style: TextStyle(fontSize: 30),
        )),
      ),
    );
  }
}
