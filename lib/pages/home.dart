import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'homepage.dart';

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
        child: Column(
          children: <Widget>[
            Container(
              child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.black,
                  ),
                  title: Text('John Smith'),
                  trailing: Icon(Icons.favorite_border),
                ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 3),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15)
              ),
              child: Image.asset('assets/assettest.png'),
            ),


            SizedBox(height: 20),




            Container(
              child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.black,
                  ),
                  title: Text('Jake Johns'),
                  trailing: Icon(Icons.favorite_border),
                ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 3),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15)
              ),
              child: Image.asset('assets/assettest.png'),
            ),









          ],
        ),
      ),
    );
  }
}