import 'package:devstagram/pages/settingbutton.dart';
import 'package:flutter/material.dart';
import 'home.dart';
import 'profile.dart';
import 'Settings/home.dart';



class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

int indx = 1;

class _HomePageState extends State<HomePage> {


  final tabs = [
    Text('Test'),
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
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
              child: IconButton(
                icon: Icon(Icons.settings, color: Colors.black), 
                onPressed: () => {
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return SettingsHome();
                  }))
                }
                ),
            ),
          ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: indx,
        elevation: 0,
        backgroundColor: Colors.white,
        items: [
          BottomNavigationBarItem(
            backgroundColor: Colors.white,
            icon: IconTheme(data: IconThemeData(color: Colors.black), child: Icon(Icons.add_a_photo)),
            title: Text('')
            ),
          BottomNavigationBarItem(
            backgroundColor: Colors.white,
            icon: IconTheme(data: IconThemeData(color: Colors.black), child: Icon(Icons.home)),
            title: Text('')
            ),
          BottomNavigationBarItem(
            backgroundColor: Colors.white,
            icon: IconTheme(data: IconThemeData(color: Colors.black), child: Icon(Icons.person)),
            title: Text('')
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
