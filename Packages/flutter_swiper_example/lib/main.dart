import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Swiper Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: Text('Swiper'),
          ),
          body: Center(
            child: Swiper(
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return Image.network(
                  "https://upload.wikimedia.org/wikipedia/commons/8/84/Lake_Bled_from_the_Mountain.jpg",
                  fit: BoxFit.fill,
                );
              },
              itemCount: 10,
              itemWidth: 500,
              itemHeight: 500,
              layout: SwiperLayout.TINDER,
            ),
          ),
        ));
  }
}
