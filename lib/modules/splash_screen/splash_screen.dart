import 'dart:async';

import 'package:flutter/material.dart';

import '../../layout/news_app/news_layout.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5),
            () =>
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder:
                    (context) =>
                    News_Screen()
                )
            )
    );
  }


  String img = 'https://thumbs.dreamstime.com/b/news-icon-vector-isolated-white-background-your-web-mobile-app-design-news-logo-concept-news-icon-vector-sign-133757450.jpg';
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: Image.network(img),
    );
  }
}

