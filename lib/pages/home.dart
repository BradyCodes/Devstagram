import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'homepage.dart';
import 'post.dart';

class home extends StatefulWidget {
  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
          children: <Widget>[
            Post('John Smith', 'assets/assettest.png'),
            // Padding(
            //   padding: EdgeInsets.symmetric(horizontal: 15, vertical: 3),
            // ),
            // Container(
            //   decoration: BoxDecoration(
            //     borderRadius: BorderRadius.circular(15)
            //   ),
            //   child: Image.asset('assets/assettest.png'),
            // ),






            Post('Jacod Johnson', 'assets/TerminalImage.png'),
            Post('Clara Deviod', 'assets/GithubImage.png'),









          ],
        ),
      ),
    );
  }
}