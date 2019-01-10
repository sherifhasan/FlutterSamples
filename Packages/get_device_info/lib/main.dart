import 'package:flutter/material.dart';
import 'package:device_info/device_info.dart';

void main() => runApp(MyApp());

void getDeviceInfo() async {
  DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
  AndroidDeviceInfo androidInfo = await deviceInfo.androidInfo;
  print('Running on ${androidInfo.model}');
  print('Manufacturer ${androidInfo.manufacturer}');

// This for IOS
  /* IosDeviceInfo iosInfo = await deviceInfo.iosInfo;
  print('Running on ${iosInfo.utsname.machine}');*/
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    getDeviceInfo();
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Device info'),
          ),
          body:
              Center(child: Text("Device Info will appear in Debug console"))),
    );
  }
}
