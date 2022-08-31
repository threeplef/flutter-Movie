import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:movie/data/model/movie_dto.dart';
import 'package:movie/data/source/movie_api.dart';

class MovieApiImpl implements MovieApi {
  final http.Client _client;

  MovieApiImpl({http.Client? client}) : _client = (client ?? http.Client());

  @override
  Future<MovieDto> getMovieList() async {
    Uri url = Uri.parse(
        'https://api.themoviedb.org/3/movie/upcoming?api_key=a64533e7ece6c72731da47c9c8bc691f&language=ko-KR&page=1');

    http.Response response = await _client.get(url);
    String jsonString = response.body;

    Map<String, dynamic> json = jsonDecode(jsonString);
    return MovieDto.fromJson(json);
  }

  @override
  Future<MovieDto> getSearchMovieList(String query) async {
    Uri url = Uri.parse(
        'https://api.themoviedb.org/3/search/movie?language=ko-KR&api_key=a64533e7ece6c72731da47c9c8bc691f&query=$query');

    http.Response response = await _client.get(url);
    String jsonString = response.body;

    Map<String, dynamic> json = jsonDecode(jsonString);
    return MovieDto.fromJson(json);
  }
}
