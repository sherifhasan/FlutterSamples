import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String svgImageAssests1 = 'images/grocery.svg';
    String svgImageAssets2 = 'images/delivery_man.svg';
    String svgImageUrl = "https://svgshare.com/i/ATA.svg";
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Load SVG Picture'),
        ),
        body: ListView(
          children: <Widget>[
            Column(
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Svg from assets',
                    style: TextStyle(fontSize: 25, color: Colors.blue),
                  ),
                ),
                SvgPicture.asset(
                  svgImageAssests1,
                  fit: BoxFit.cover,
                ),
                SvgPicture.asset(
                  svgImageAssets2,
                  width: 150,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Svg from Network',
                    style: TextStyle(fontSize: 25, color: Colors.red),
                  ),
                ),
                SvgPicture.network(
                  svgImageUrl,
                  width: 150,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
