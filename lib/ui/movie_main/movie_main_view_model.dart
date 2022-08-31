import 'package:flutter/material.dart';
import 'package:movie/data/model/movie.dart';
import 'package:movie/data/repository/movie_repository_impl.dart';
import 'package:movie/data/source/movie_api_impl.dart';

class MovieMainViewModel extends ChangeNotifier {
  final _movieRepository = MovieRepositoryImpl(MovieApiImpl());
  List<Movie> movieList = [];
  List<Movie> sortedMovieList = [];

  MovieMainViewModel() {
    getSortedListByTitle();
    getSortedListByVoteAverage();
    notifyListeners();
  }

  Future getList() async {
    movieList = await _movieRepository.getResult();
    notifyListeners();
  }

  Future getSearchList(String query) async {
    movieList = await _movieRepository.getSearchResult(query);
    notifyListeners();
  }

  Future getSortedListByTitle() async {
    movieList = await _movieRepository.getSortedResultByTitle();
    notifyListeners();
  }

  Future getSortedListByVoteAverage() async {
    sortedMovieList = await _movieRepository.getSortedResultByVoteAverage();
    notifyListeners();
  }
}