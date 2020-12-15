import 'package:devstagram/pages/settingbutton.dart';
import 'package:flutter/material.dart';
import 'home.dart';
import 'profile.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

int indx = 1;

class _HomePageState extends State<HomePage> {


  final tabs = [
    Center(child: Text('Upload a photo'),),
    home(),
    Profile(),
  ];
  final titletex = [
    'Add Photo',
    'Home',
    'Profile',
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: tabs[indx],
      backgroundColor: Colors.white,
      appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text(titletex[indx], style: TextStyle(color: Colors.black,)),  
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: indx,
        elevation: 0,
        backgroundColor: Colors.white,
        items: [
          BottomNavigationBarItem(
            backgroundColor: Colors.white,
            icon: Icon(Icons.add_a_photo),
            title: Text('Upload a Photo')
            ),
          BottomNavigationBarItem(
            backgroundColor: Colors.white,
            icon: Icon(Icons.home),
            title: Text('Home')
            ),
          BottomNavigationBarItem(
            backgroundColor: Colors.white,
            icon: Icon(Icons.person),
            title: Text('Your Account')
            ),
        ],
        onTap: (index) {
          setState(() {
            indx = index;
          });
        },
        ),
    );
  }
}
