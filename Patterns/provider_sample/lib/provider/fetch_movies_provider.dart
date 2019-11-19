import 'package:flutter/material.dart';
import 'package:movie_app/apis/fetch_movies.dart';
import 'package:movie_app/models/response.dart';

class MoviesProvider with ChangeNotifier {
  List<Movie> moviesList = List();
  bool isFinished = false;

  Future<void> getMovies() async {
    if (!isFinished) {
      fetchMovies().then((moviesResponse) {
        if (moviesResponse != null) {
          if (moviesResponse.totalResults == moviesList.length) {
            isFinished = true;
          }
          if (moviesResponse.results.isNotEmpty) {
            moviesList.addAll(moviesResponse.results);
          }
          page++;
          notifyListeners();
        }
      });
    }
  }
}
