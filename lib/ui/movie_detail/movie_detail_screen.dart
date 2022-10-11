import 'dart:async';

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:movie/data/model/movie.dart';

class MovieDetailScreen extends StatefulWidget {
  const MovieDetailScreen(this.movie, {Key? key}) : super(key: key);
  final Movie movie;

  @override
  State<MovieDetailScreen> createState() => _MovieDetailScreenState();
}

class _MovieDetailScreenState extends State<MovieDetailScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  final fadeOutController = false;

  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 100),
    );
    Timer(const Duration(milliseconds: 100),
        () => _animationController.forward());
    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.close)),
        ],
      ),
      body: SafeArea(
        child: SlideTransition(
          position: Tween<Offset>(
            begin: const Offset(0, 1),
            end: Offset.zero,
          ).animate(_animationController),
          child: FadeIn(
            animate: true,
            duration: const Duration(seconds: 1),
            child: FadeOut(
              animate: fadeOutController,
              duration: const Duration(seconds: 1),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Image.network(
                      widget.movie.backdropPath,
                      fit: BoxFit.cover,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 8, 0, 0),
                          child: Text(widget.movie.title,
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18)),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 5, 0, 0),
                          child: Row(
                            children: [
                              Text(
                                widget.movie.releaseDate,
                                style: const TextStyle(
                                    color: Colors.white, fontSize: 16),
                              ),
                              const SizedBox(width: 5),
                              const Icon(Icons.star, color: Colors.amber),
                              const SizedBox(width: 3),
                              Text(
                                widget.movie.voteAverage.toString(),
                                style: const TextStyle(
                                    color: Colors.white, fontSize: 16),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 3, 10, 0),
                          child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                primary: Colors.white,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Icon(Icons.play_arrow,
                                      color: Colors.black, size: 25),
                                  Text(
                                    ' 재생',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 17),
                                  ),
                                ],
                              )),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                          child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                primary: Colors.white12,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Icon(Icons.file_download_outlined,
                                      color: Colors.white, size: 25),
                                  Text(
                                    ' 저장',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 17),
                                  ),
                                ],
                              )),
                        ),
                        const SizedBox(height: 5),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(12, 3, 12, 0),
                          child: Text(widget.movie.overview,
                              style: const TextStyle(
                                  color: Colors.white, fontSize: 15)),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(28, 10, 0, 0),
                          child: Row(
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.add,
                                    color: Colors.white, size: 35),
                              ),
                              const SizedBox(width: 52),
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.thumb_up_alt_outlined,
                                    color: Colors.white, size: 35),
                              ),
                              const SizedBox(width: 45),
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.send_outlined,
                                    color: Colors.white, size: 35),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(12, 0, 0, 0),
                          child: Row(
                            children: const [
                              Text('내가 찜한 콘텐츠',
                                  style: TextStyle(
                                      color: Colors.white54, fontSize: 12)),
                              SizedBox(width: 45),
                              Text('평가',
                                  style: TextStyle(
                                      color: Colors.white54, fontSize: 12)),
                              SizedBox(width: 70),
                              Text('공유',
                                  style: TextStyle(
                                      color: Colors.white54, fontSize: 12)),
                            ],
                          ),
                        ),
                        const SizedBox(height: 20),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
