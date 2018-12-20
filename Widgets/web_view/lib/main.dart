import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: ThemeData(primarySwatch: Colors.red),
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (_) => new WebviewScaffold(
              url: "https://www.youtube.com",
              appBar: new AppBar(
                title: new Text("Widget webview"),
              ),
            ),
      },
    );
  }
}
