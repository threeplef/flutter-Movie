import 'package:flutter/material.dart';
import 'package:movie/ui/components/movie_list.dart';
import 'package:movie/ui/movie_main/movie_main_view_model.dart';
import 'package:provider/provider.dart';

class MovieSearchScreen extends StatelessWidget {
  const MovieSearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<MovieMainViewModel>();

    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child:
            MovieList(movieList: viewModel.movieSearchList, filterTitle: '검색 결과'),
      ),
    );
  }
}
