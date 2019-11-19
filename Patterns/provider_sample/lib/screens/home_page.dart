import 'package:flutter/material.dart';
import 'package:movie_app/apis/load_more_status.dart';
import 'package:movie_app/models/response.dart';
import 'package:movie_app/presentation/movie_cell.dart';
import 'package:movie_app/provider/fetch_movies_provider.dart';
import 'package:provider/provider.dart';

import 'details_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  MoviesProvider _moviesProvider;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    _moviesProvider = Provider.of<MoviesProvider>(context);
    final orientation = MediaQuery.of(context).orientation;
    _moviesProvider.getMovies();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Movie App"),
      ),
      body: Builder(builder: (context) {
        if (_moviesProvider.moviesList != null) {
          return GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount:
                      (orientation == Orientation.portrait) ? 2 : 3),
              itemCount: _moviesProvider.moviesList.length,
              itemBuilder: (context, i) {
                final movie = _moviesProvider.moviesList[i];
                return GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DetailPage(movie)));
                    },
                    child: MovieCell(movie));
              });
        } else {
          return Center(child: CircularProgressIndicator());
        }
      }),
    );
  }
}
