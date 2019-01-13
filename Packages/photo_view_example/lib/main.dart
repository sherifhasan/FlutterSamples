import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final url =
        "https://github.com/flutter/website/blob/master/src/_includes/code/layout/lakes/images/lake.jpg?raw=true";
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Zoomable Image Widget'),
        ),
        body: Container(
            child: PhotoView(
          enableRotation: true,
          imageProvider: NetworkImage(url),
        )),
      ),
    );
  }
}
