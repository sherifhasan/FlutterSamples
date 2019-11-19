import 'package:flutter/material.dart';
import 'package:movie_app/apis/api_config.dart';
import '../models/response.dart';
import '../presentation/StarRating.dart';

class DetailPage extends StatelessWidget {
  final Movie movie;

  DetailPage(this.movie);

  @override
  Widget build(BuildContext context) {
    double rate = (double.parse(movie.voteAverage)) / 2;
    return Scaffold(
      appBar: AppBar(
        title: Text(movie.title),
        backgroundColor: Colors.black,
      ),
      body: ListView(
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Image.network(
                '${ApiConfig.BASE_POSTER_URL}${movie.backdropPath}',
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 3,
                fit: BoxFit.cover,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Overview",
                  style: new TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  movie.overview,
                  style: TextStyle(fontSize: 15.0),
                ),
              )
            ],
          ),
          Row(
            children: <Widget>[
              Container(
                padding: const EdgeInsets.all(8.0),
                child: StarRating(
                  rating: rate,
                  color: Colors.red,
                ),
              ),
              Container(
                width: 100.0,
              ),
              Text(
                movie.releaseDate,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                    color: Colors.blue),
                textAlign: TextAlign.end,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
