import 'package:flutter/material.dart';
import 'heartbutton.dart';

class Post extends StatelessWidget {
  String _name = 'John Smith';
  String _path = 'assets/assettest.png';
  String _caption = 'Check out my new Code!';

  Post(String _name, String _path, String _caption) {
    this._name = _name;
    this._path = _path;
    this._caption = _caption;
  }


  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          child: ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.black,
            ),
            title: Text(_name),
            trailing: HeartButton()
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 3),
        ),
        Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
          child: Image.asset(_path)
        ),
        Container(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Align(alignment: Alignment.centerLeft, child: Text(_name + ':     ' + _caption, style: TextStyle(fontSize: 15),),),
          )
        ),
        SizedBox(height: 100,),
      ],
    );
  }
}





