import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/apis/api_config.dart';
import 'package:movie_app/models/response.dart';
import 'package:http/http.dart' as http;

int page = 1;

Future<MoviesResponse> fetchMovies() async {
  var client = http.Client();
  debugPrint("Movies Api");
  try {
    final response = await client.get('${ApiConfig.MOVIES_URL}&page=$page');
    if (response.statusCode == 200) {
      return compute(parseMoviesResponse, response.bodyBytes);
    }
  } catch (e) {
    print(e.toString());
  } finally {
    client.close();
  }
  return null;
}

MoviesResponse parseMoviesResponse(responseBody) {
  return MoviesResponse.fromJson(json.decode(utf8.decode(responseBody)));
}
