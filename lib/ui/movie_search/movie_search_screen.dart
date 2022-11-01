import 'package:flutter/material.dart';
import 'package:movie/debounce.dart';
import 'package:movie/ui/main_action.dart';
import 'package:movie/ui/movie_detail/movie_detail_screen.dart';
import 'package:movie/ui/movie_main/movie_view_model.dart';
import 'package:provider/provider.dart';

class MovieSearchScreen extends StatefulWidget {
  const MovieSearchScreen({Key? key}) : super(key: key);

  @override
  State<MovieSearchScreen> createState() => _MovieSearchScreenState();
}

class _MovieSearchScreenState extends State<MovieSearchScreen> {
  final _controller = TextEditingController();
  final _debounce = Debounce(milliseconds: 500);

  @override
  void dispose() {
    _controller.dispose();
    _debounce.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<MovieViewModel>();

    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        backgroundColor: Colors.black,
        title: Padding(
          padding: const EdgeInsets.only(right: 10.0),
          child: TextField(
            style: const TextStyle(color: Colors.white),
            controller: _controller,
            cursorColor: Colors.white,
            onChanged: _debounce.run(() => setState(() {
                  viewModel.onAction(MainAction.getSearchMovieList(_controller.text));
                })),
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none),
              hintText: '검색',
              hintStyle: const TextStyle(
                  color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
              contentPadding: const EdgeInsets.fromLTRB(25, 0, 0, 0),
              filled: true,
              fillColor: Colors.white12,
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: _controller.text.isEmpty
            ? Container(
                color: Colors.black,
                child: Column(
                  children: [
                    Expanded(
                      child: ListView.builder(
                        itemCount: viewModel.movieList.length,
                        itemBuilder: (BuildContext context, int index) {
                          return GestureDetector(
                            onTap: () {
                              final movie = viewModel.movieList[index];
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      MovieDetailScreen(movie),
                                ),
                              );
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Row(
                                children: [
                                  Hero(
                                    tag: viewModel.movieList[index],
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(5),
                                      child: Image.network(
                                        viewModel.movieList[index].backdropPath,
                                        width: 150,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 10),
                                  Expanded(
                                    child: Text(
                                      viewModel.movieList[index].title,
                                      style:
                                          const TextStyle(color: Colors.white),
                                    ),
                                  ),
                                  const Icon(Icons.play_circle_outline,
                                      color: Colors.white, size: 30),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              )
            : Container(
                color: Colors.black,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Expanded(
                        child: GridView.builder(
                          gridDelegate:
                              const SliverGridDelegateWithMaxCrossAxisExtent(
                                  maxCrossAxisExtent: 150,
                                  childAspectRatio: 3 / 4,
                                  crossAxisSpacing: 0,
                                  mainAxisSpacing: 10),
                          itemCount: viewModel.movieSearchList.length,
                          itemBuilder: (BuildContext context, int index) {
                            return GestureDetector(
                              onTap: () {
                                final movie = viewModel.movieSearchList[index];
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        MovieDetailScreen(movie),
                                  ),
                                );
                              },
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Expanded(
                                    child: Hero(
                                      tag: viewModel.movieSearchList[index],
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(7),
                                        child: Image.network(
                                          viewModel
                                              .movieSearchList[index].posterPath,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                // MovieList(movieList: viewModel.movieSearchList, filterTitle: '검색 결과'),
              ),
      ),
    );
  }
}
