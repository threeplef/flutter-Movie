import 'dart:async';

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:movie/ui/movie_main/movie_main_screen.dart';

class MovieSplashScreen extends StatefulWidget {
  const MovieSplashScreen({Key? key}) : super(key: key);

  @override
  State<MovieSplashScreen> createState() => _MovieSplashScreenState();
}

class _MovieSplashScreenState extends State<MovieSplashScreen> {
  @override
  void initState() {
    Timer(const Duration(milliseconds: 3500), () {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => const MovieMainScreen()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return WillPopScope(
      onWillPop: () async => false,
      child: MediaQuery(
        data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
        child: Scaffold(
          backgroundColor: Colors.black,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: screenHeight * 0.384375),
              FadeIn(
                animate: true,
                duration: const Duration(seconds: 2),
                child: Image.asset(
                  'assets/images/splash_logo.png',
                  width: screenWidth * 0.616666,
                  height: screenHeight * 0.0859375,
                ),
              ),
              const Expanded(child: SizedBox()),
              Align(
                child: Text("© Copyright 2022, Netflix",
                    style: TextStyle(
                      fontSize: screenWidth * (14 / 360),
                      color: const Color.fromRGBO(255, 255, 255, 0.6),
                    )),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.0625,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
