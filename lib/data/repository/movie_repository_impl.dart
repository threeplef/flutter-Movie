import 'package:movie/data/model/movie.dart';
import 'package:movie/data/repository/movie_repository.dart';
import 'package:movie/data/source/movie_api.dart';

class MovieRepositoryImpl implements MovieRepository {
  final MovieApi _api;

  MovieRepositoryImpl(this._api);

  @override
  Future<List<Movie>> getResult() async {
    List<Movie> movieList = await _api.getMovieList();
    return movieList.where((element) => element.posterPath != null).map(
          (e) {
        final Movie temp;
        String path = 'https://image.tmdb.org/t/p/w500${e.posterPath}';
        temp = e.copyWith(posterPath: path);
        return temp;
      },
    ).toList();
  }

  @override
  Future<List<Movie>> getSearchResult(String query) async {
    List<Movie> movieList = await _api.getSearchMovieList(query);
    return movieList.where((element) => element.posterPath != null).map(
          (e) {
        final Movie temp;
        String path = 'https://image.tmdb.org/t/p/w500${e.posterPath}';
        temp = e.copyWith(posterPath: path);
        return temp;
      },
    ).toList();
  }
}