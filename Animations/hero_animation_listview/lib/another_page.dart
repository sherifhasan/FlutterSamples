import 'package:flutter/material.dart';

class AnotherPage extends StatelessWidget {
  final url, heroTag;

  const AnotherPage({Key key, this.url, this.heroTag}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hero Animation'),
      ),
      body: Hero(
        tag: heroTag,
        child: Center(
          child: Image.network(
            url,
            width: 400,
            height: 400,
          ),
        ),
      ),
    );
  }
}
