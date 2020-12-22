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
            Post('John Smith', 'assets/assettest.png', 'Check Out My New Code!'),
            Post('Jacod Johnson', 'assets/TerminalImage.png', 'Can Anyone help me with my terminal error?'),
            Post('Clara Deviod', 'assets/GithubImage.png', 'New Github Repo Up, Go Check It Out!'),
          ],
        ),
      ),
    );
  }
}