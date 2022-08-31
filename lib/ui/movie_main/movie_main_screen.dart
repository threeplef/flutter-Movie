import 'package:flutter/material.dart';
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

  Widget _movieList() {
    final viewModel = context.watch<MovieMainViewModel>();
    return SizedBox(
      height: 240,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('이름순'),
            Expanded(
              child: GridView.builder(
                scrollDirection: Axis.horizontal,
                gridDelegate:
                const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                  childAspectRatio: 3 / 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                itemCount: viewModel.movieList.length,
                itemBuilder: (BuildContext ctx, index) {
                  return GestureDetector(
                    onTap: () {
                      final movie = viewModel.movieList[index];
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MovieDetailScreen(movie),
                        ),
                      );
                    },
                    child: Column(
                      children: [
                        Hero(
                          tag: viewModel.movieList[index].id,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.network(
                              viewModel.movieList[index].posterPath,
                              width: 130,
                              height: 200,
                              fit: BoxFit.cover,
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
    );
  }
  Widget _sortedMovieList() {
    final viewModel = context.watch<MovieMainViewModel>();
    return SizedBox(
      height: 240,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('평점순'),
            Expanded(
              child: GridView.builder(
                scrollDirection: Axis.horizontal,
                gridDelegate:
                const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                  childAspectRatio: 3 / 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                itemCount: viewModel.sortedMovieList.length,
                itemBuilder: (BuildContext ctx, index) {
                  return GestureDetector(
                    onTap: () {
                      final movie = viewModel.sortedMovieList[index];
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MovieDetailScreen(movie),
                        ),
                      );
                    },
                    child: Column(
                      children: [
                        Hero(
                          tag: viewModel.sortedMovieList[index].id,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.network(
                              viewModel.sortedMovieList[index].posterPath,
                              width: 130,
                              height: 200,
                              fit: BoxFit.cover,
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
    );
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
                _movieList(),
                _sortedMovieList(),
                _movieList(),
                _movieList(),
              ],
            ),
          )
    );
  }
}