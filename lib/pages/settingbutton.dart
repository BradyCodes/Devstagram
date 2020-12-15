import 'package:flutter/material.dart';
import 'homepage.dart';

class SettingsIcons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    if (indx == 0){
      print('no');
    }else if (indx == 1){
      print('no');
    }else if(indx == 2){
      IconButton(icon: Icon(Icons.settings), onPressed: null);
    }
  }
}