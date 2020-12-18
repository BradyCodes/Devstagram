import 'package:flutter/material.dart';


class HeartButton extends StatefulWidget {
  @override
  _HeartButtonState createState() => _HeartButtonState();
}

class _HeartButtonState extends State<HeartButton> {

  bool liked = false;

  _pressed() {
    setState(() {
      liked = !liked;
    });
  }

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(liked ? Icons.favorite : Icons.favorite_border), 
      color: liked ? Colors.redAccent : Colors.grey,
      onPressed: () => _pressed(),
    );
  }
}