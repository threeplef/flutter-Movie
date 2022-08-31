import 'package:flutter/material.dart';
import 'package:movie/ui/movie_main/components/movie_list.dart';
import 'package:movie/ui/movie_main/movie_main_view_model.dart';
import 'package:provider/provider.dart';
import '../movie_detail/movie_detail_screen.dart';

class MovieMainScreen extends StatefulWidget {
  const MovieMainScreen({Key? key}) : super(key: key);

  @override
  State<MovieMainScreen> createState() => _MovieMainScreenState();
}

class _MovieMainScreenState extends State<MovieMainScreen> {
  bool _searchBoolean = false;
  final _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<MovieMainViewModel>();
    return Scaffold(
      appBar: AppBar(
        actions: !_searchBoolean
            ? [
                IconButton(
                  icon: const Icon(Icons.home),
                  onPressed: () {
                    viewModel.getList();
                  },
                ),
                IconButton(
                    icon: const Icon(Icons.search),
                    onPressed: () {
                      setState(() {
                        _searchBoolean = true;
                      });
                    }),
              ]
            : [
          IconButton(
              icon: const Icon(Icons.clear),
              onPressed: () {
                setState(() {
                  _searchBoolean = false;
                  _controller.clear();
                      });
                    })
              ],
        title: !_searchBoolean
            ? const Text("영화 리스트")
            : TextField(
                controller: _controller,
                autofocus: true,
                cursorColor: Colors.white,
                decoration: InputDecoration(
                  suffixIcon: GestureDetector(
                    onTap: () {
                      if (_controller.text.isNotEmpty) {
                        viewModel.getSearchList(_controller.text);
                        _controller.clear();
                      }
                    },
                    child: const Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                  ),
                  enabledBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white)),
                  focusedBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white)),
                  hintText: '제목을 입력하세요',
                  hintStyle: const TextStyle(
                    color: Colors.white60,
                    fontSize: 20,
                  ),
                ),
              ),
      ),
      body: viewModel.movieList.isEmpty
          ? const CircularProgressIndicator()
          : SingleChildScrollView(
            child: Column(
              children: [
                MovieList(movieList: viewModel.movieList),
                MovieList(movieList: viewModel.sortedMovieList),
                MovieList(movieList: viewModel.movieList),
                MovieList(movieList: viewModel.movieList),
              ],
            ),
          )
    );
  }
}