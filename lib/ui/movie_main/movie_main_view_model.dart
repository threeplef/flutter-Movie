import 'package:flutter/material.dart';
import 'package:movie/data/model/movie.dart';
import 'package:movie/data/repository/movie_repository_impl.dart';
import 'package:movie/data/source/movie_api_impl.dart';

class MovieMainViewModel extends ChangeNotifier {
  final _movieRepository = MovieRepositoryImpl(MovieApiImpl());
  List<Movie> movieList = [];
  List<Movie> sortedMovieListByTitle = [];
  List<Movie> sortedMovieListByVoteAverage = [];
  List<Movie> sortedMovieByReleaseDate = [];

  MovieMainViewModel() {
    getList();
    getSortedListByTitle();
    getSortedListByVoteAverage();
    getSortedListByReleaseDate();
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
    sortedMovieListByTitle = await _movieRepository.getSortedResultByTitle();
    notifyListeners();
  }

  Future getSortedListByVoteAverage() async {
    sortedMovieListByVoteAverage = await _movieRepository.getSortedResultByVoteAverage();
    notifyListeners();
  }

  Future getSortedListByReleaseDate() async {
    sortedMovieByReleaseDate = await _movieRepository.getSortedResultByReleaseDate();
    notifyListeners();
  }
}