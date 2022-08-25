import 'package:flutter/material.dart';
import 'package:movie/data/model/movie.dart';

class MovieDetailViewModel extends ChangeNotifier {
  final Movie movie;

  MovieDetailViewModel(this.movie);
}