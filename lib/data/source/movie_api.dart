import 'package:movie/data/model/movie_dto.dart';

abstract class MovieApi {
  Future<MovieDto> getMovieList();
  Future<MovieDto> getSearchMovieList(String query);
}