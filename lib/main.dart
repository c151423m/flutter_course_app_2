// import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.deepOrangeAccent,
        body: SafeArea(
          //avoid notch
          child: Center(
            //Puts widget centre
            child: SingleChildScrollView(
              // this allows you to tilt device and avoid pixel overflow
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.coffee,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'WELCOME',
                        style: TextStyle(
                          color: Colors.white,
                          letterSpacing: 2.0,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                  Center(
                    child: Image.asset("images/welcome.png"),
                  ),
                  OutlinedButton(
                    onPressed: () {
                      print('Sign in button');
                    },
                    child: Text('Sign In'),
                    style: OutlinedButton.styleFrom(
                      side: BorderSide(color: Colors.white, width: 2.0),
                      primary: Colors.white,
                      minimumSize: Size(200.0, 40.0),
                    ),
                  ),
                  OutlinedButton(
                    onPressed: () {
                      print('Register button');
                    },
                    child: Text('Register'),
                    style: OutlinedButton.styleFrom(
                        primary: Colors.deepOrangeAccent,
                        backgroundColor: Colors.white,
                        minimumSize: Size(200, 40)),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
