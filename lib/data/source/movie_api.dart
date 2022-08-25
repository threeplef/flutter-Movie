import 'package:movie/data/model/movie.dart';

abstract class MovieApi {
  Future<List<Movie>> getMovieList();
  Future<List<Movie>> getSearchMovieList(String query);
}