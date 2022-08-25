import 'package:movie/data/model/movie.dart';

abstract class MovieRepository {
  Future<List<Movie>> getResult();
  Future<List<Movie>> getSearchResult(String query);
}