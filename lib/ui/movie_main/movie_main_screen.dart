import 'package:flutter/material.dart';
import 'package:movie/ui/components/movie_list.dart';
import 'package:movie/ui/main_action.dart';
import 'package:movie/ui/movie_main/movie_view_model.dart';
import 'package:movie/ui/movie_search/movie_search_screen.dart';
import 'package:provider/provider.dart';

class MovieMainScreen extends StatefulWidget {
  const MovieMainScreen({Key? key}) : super(key: key);

  @override
  State<MovieMainScreen> createState() => _MovieMainScreenState();
}

class _MovieMainScreenState extends State<MovieMainScreen> {
  final _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<MovieViewModel>();
    return Scaffold(
      appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.black,
          actions: [
            IconButton(
              icon: const Icon(Icons.home, size: 30),
              onPressed: () {
                viewModel.onAction(const MainAction.home());
              },
            ),
            IconButton(
                icon: const Icon(Icons.search, size: 30),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const MovieSearchScreen()),
                  );
                }),
            const SizedBox(width: 5),
          ],
          title: Image.asset('assets/images/logo.png', width: 40)),
        body: viewModel.movieList.isEmpty ||
              viewModel.sortedMovieListByTitle.isEmpty ||
              viewModel.sortedMovieListByVoteAverage.isEmpty ||
              viewModel.sortedMovieByReleaseDate.isEmpty
          ? Container(
              color: Colors.black,
              child: const Center(
                child: CircularProgressIndicator(color: Colors.red),
              ),
            )
          : Container(
              color: Colors.black,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    MovieList(
                        movieList: viewModel.movieList,
                        filterTitle: '상영 중인 영화'),
                    MovieList(
                        movieList: viewModel.sortedMovieListByVoteAverage,
                        filterTitle: '평점순'),
                    MovieList(
                        movieList: viewModel.sortedMovieListByTitle,
                        filterTitle: '이름순'),
                    MovieList(
                        movieList: viewModel.sortedMovieByReleaseDate,
                        filterTitle: '최신순'),
                  ],
                ),
              ),
            ),
    );
  }
}