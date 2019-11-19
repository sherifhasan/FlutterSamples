import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutter/services.dart';
import 'package:geo_location_finder/geo_location_finder.dart';

void main() => runApp(new MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  void initState() {
    super.initState();
    _getLocation();
  }

  Future<Map<dynamic, dynamic>> _getLocation() async {
    Map<dynamic, dynamic> locationMap;

    try {
      locationMap = await GeoLocation.getLocation;
    } on PlatformException {
      locationMap = null;
    }
    return locationMap;
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Plugin location app'),
          ),
          body: FutureBuilder(
            future: _getLocation(),
            builder: (BuildContext context,
                AsyncSnapshot<Map<dynamic, dynamic>> snapshot) {
              if (!snapshot.hasData) {
                return Center(child: CircularProgressIndicator());
              } else {
                var status = snapshot.data["status"];
                if ((status is String && status == "true") ||
                    (status is bool) && status) {
                  var lat = snapshot.data["latitude"];
                  var lng = snapshot.data["longitude"];

                  return Center(child: new Text('$lat, $lng'));
                }
              }
            },
          )),
    );
  }
}
