import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

Future<List<Post>> fetchPosts() async {
  final response = await http.get('https://jsonplaceholder.typicode.com/posts');

  if (response.statusCode == 200) {
    List<Post> posts = (json.decode(response.body) as List)
        .map((e) => new Post.fromJson(e))
        .toList();
    return posts;
  } else {
    throw Exception('Failed to load posts');
  }
}

class Post {
  final int userId;
  final int id;
  final String title;
  final String body;

  Post({this.userId, this.id, this.title, this.body});

  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
      userId: json['userId'],
      id: json['id'],
      title: json['title'],
      body: json['body'],
    );
  }
}

void main() => runApp(MyApp(posts: fetchPosts()));

class MyApp extends StatelessWidget {
  final Future<List<Post>> posts;

  MyApp({Key key, this.posts}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fetch Data From Api',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Fetch Data From Api'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8),
          child: FutureBuilder<List<Post>>(
            future: posts,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                List<Post> list = new List();
                list = snapshot.data;
                return ListView.builder(
                  itemCount: list.length,
                  itemBuilder: (context, i) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                          child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                          list[i].title,
                          style: new TextStyle(fontSize: 15),
                        ),
                      )),
                    );
                  },
                );
              } else if (snapshot.hasError) {
                print(snapshot.error);
                return Text("${snapshot.error}");
              }
              return Center(child: CircularProgressIndicator());
            },
          ),
        ),
      ),
    );
  }
}
