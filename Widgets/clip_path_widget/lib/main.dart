import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var imageUrl =
        "https://github.com/flutter/plugins/raw/master/packages/video_player/doc/demo_ipod.gif?raw=true";
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: new Image.network(
          imageUrl,
          width: screenWidth,
          fit: BoxFit.cover,
        ));
  }
}

class ArcClipper extends CustomClipper<Rect> {
  @override
  Rect getClip(Size size) {
    var rect = Rect.fromLTRB(10, 10, 10, 8);
    return rect;
  }

  @override
  bool shouldReclip(CustomClipper<Rect> oldClipper) {
    return false;
  }
}
