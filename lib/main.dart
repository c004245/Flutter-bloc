import 'package:flutter/material.dart';
import 'package:flutter_bloc/MicroDust.dart';
import 'package:flutter_bloc/MyAnimatedContainer.dart';
import 'package:flutter_bloc/MyAnimatedOpacity.dart';
import 'package:flutter_bloc/MyDrawer.dart';
import 'package:flutter_bloc/MyFormValidation.dart';
import 'package:flutter_bloc/MyMethodChannel.dart';
import 'package:flutter_bloc/MyOrientation.dart';
import 'package:flutter_bloc/MyPageView.dart';
import 'package:flutter_bloc/MySnackBar.dart';
import 'package:flutter_bloc/MySwipeToDismiss.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to  zero; the application
          // is not restarted.
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
            appBar: AppBar(
              title: Text('Flutter Tutorial'),
            ),
            body: MyHomePage()));
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        ListTile(
          title: Text('AnimatedContainer'),
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => MyAnimatedContainer()));
          },
        ),
        ListTile(
          title: Text('AnimatedOpacity'),
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => MyAnimatedOpacity()));
          },
        ),
        ListTile(
          title: Text('Drawer'),
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => MyDrawer()));
          },
        ),
        ListTile(
          title: Text('SnackBar'),
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => MySnackBar()));
          },
        ),
        ListTile(
          title: Text('Orientation'),
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => MyOrientation()));
          },
        ),
        ListTile(
          title: Text('Validation'),
          onTap: () {
            Navigator.push(context,
            MaterialPageRoute(builder: (context) => MyFormValidation()));
          },
        ),
        ListTile(
          title: Text('SwipeToDismiss'),
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => MySwipeToDismiss()));
          },
        ),
        ListTile(
          title: Text('MyChannel'),
          onTap: () {
            Navigator.push(context,
            MaterialPageRoute(builder: (context) => MyMethodChannel()));
          },
        ),
        ListTile(
          title: Text('MyTabController'),
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => MyPageView()));
          },
        ),
        ListTile(
          title: Text('MicroDust'),
          onTap: () {
            Navigator.push(context,
              MaterialPageRoute(builder: (context) => MicroDust()));
          },
        )
      ],
    );
  }
}
