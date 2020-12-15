import 'package:flutter/material.dart';
import 'main.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ListView(
          physics: NeverScrollableScrollPhysics(),
          padding: EdgeInsets.symmetric(horizontal: 8),
          children: <Widget>[
            Column(
              children: <Widget>[
                SizedBox(height: 10),
                Image.asset('assets/HeyThere.png'),
                Text('Log In', style: TextStyle(fontSize: 25),)
              ],
            ),
            SizedBox(height: 15),
            TextField(//email/phone
            cursorColor: Colors.black,
              decoration: InputDecoration(
                hintText: 'Code',
                hintStyle: TextStyle(fontSize: 15)
              ),
            ),
            Padding(padding: EdgeInsets.symmetric(horizontal: 15)),
            SizedBox(height: 45),
            Column(
              children: <Widget>[
                ButtonTheme(
                    height: 50,
                    minWidth: 200,
                    disabledColor: Colors.black,
                    child: RaisedButton(
                      color: Colors.black,
                      child: Text('Login', style: TextStyle(color: Colors.white)),
                      onPressed: () => {
                        print('test')
                      },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}