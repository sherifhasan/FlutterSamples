import 'package:flutter/material.dart';
import 'package:movie_app/apis/api_config.dart';
import 'package:movie_app/models/response.dart';
import '../presentation/StarRating.dart';

class MovieCell extends StatelessWidget {
  final Movie movie;

  MovieCell(this.movie);

  @override
  Widget build(BuildContext context) {
    return GridTile(
      child: Card(
        child: Image.network(
          '${ApiConfig.BASE_POSTER_URL}${movie.posterPath}',
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
