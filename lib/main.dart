import 'package:devstagram/pages/homepage.dart';
import 'package:flutter/material.dart';
import 'login.dart';
import 'pages/homepage.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Devstagram',
      home: HomePage(),
    );
  }
}