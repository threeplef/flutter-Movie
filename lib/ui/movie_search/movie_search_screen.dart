import 'package:flutter/material.dart';
import 'package:movie/ui/components/movie_list.dart';
import 'package:movie/ui/movie_main/movie_main_view_model.dart';
import 'package:provider/provider.dart';

class MovieSearchScreen extends StatefulWidget {
  const MovieSearchScreen({Key? key}) : super(key: key);

  @override
  State<MovieSearchScreen> createState() => _MovieSearchScreenState();
}

class _MovieSearchScreenState extends State<MovieSearchScreen> {
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
        title: TextField(
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
      body: SafeArea(
        child: MovieList(movieList: viewModel.movieSearchList, filterTitle: '검색 결과'),
      ),
    );
  }
}
