import 'package:flutter/material.dart';
import 'package:flutter_bloc_test/Counter.dart' as prefix0;
import 'package:flutter_bloc_test/CounterTest.dart';
import 'package:flutter_bloc_test/Login.dart';
import 'package:flutter_bloc_test/MicroDust.dart';
import 'package:flutter_bloc_test/MyAnimatedContainer.dart';
import 'package:flutter_bloc_test/MyAnimatedOpacity.dart';
import 'package:flutter_bloc_test/MyDrawer.dart';
import 'package:flutter_bloc_test/MyFormValidation.dart';
import 'package:flutter_bloc_test/MyMethodChannel.dart';
import 'package:flutter_bloc_test/MyOrientation.dart';
import 'package:flutter_bloc_test/MyPageView.dart';
import 'package:flutter_bloc_test/MySnackBar.dart';
import 'package:flutter_bloc_test/MySwipeToDismiss.dart';
import 'package:flutter_bloc_test/bloc/bloctest.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      ChangeNotifierProvider(builder: (_) => prefix0.Counter()),
    ],
      child: Consumer<Counter>(builder: (context, counter, _) {
        MaterialApp(
            title: 'Flutter Demo',
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
            home: Scaffold(
                appBar: AppBar(
                  title: Text('Flutter Tutorial'),
                ),
                body: MyHomePage()));
      }),
    );
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
        ),
        ListTile(
          title: Text('RxTest'),
          onTap: () {
            Navigator.push(context,
            MaterialPageRoute(builder: (context) => Counter()));
          },
        ),
        ListTile(
          title: Text('Bloc'),
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => BlocTest()));
          },
        ),
        ListTile(
          title: Text('Cart'),
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => LoginScreen()));
          },
        )
      ],
    );
  }
}
