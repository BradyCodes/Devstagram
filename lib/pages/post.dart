import 'package:flutter/material.dart';

class Post extends StatelessWidget {
  String _name = 'John Smith';
  String _path = 'assets/assettest.png';

  Post(String _name, String _path) {
    this._name = _name;
    this._path = _path;
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
            trailing: IconButton(
              icon: Icon(Icons.favorite_border),
              onPressed: () {
                print('ooooofff');
              },
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 3),
        ),
        Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
          child: Image.asset(_path)
        ),
      ],
    );
  }
}
