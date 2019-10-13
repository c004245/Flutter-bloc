import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WelCome'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Enter'),
          onPressed: () {
            
          },
        )
      )
    );
  }
}
