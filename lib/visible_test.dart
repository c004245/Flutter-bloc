import 'package:flutter/material.dart';

class VisibleTest extends StatefulWidget {
  @override
  _VisibleTestState createState() => _VisibleTestState();
}

class _VisibleTestState extends State<VisibleTest> {

  bool _visibility = false;

  void _changeVisibility(bool visibility) {
    setState(() {
      _visibility = visibility;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TEST'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              child: Offstage(
                child: FlutterLogo(size: 200.0),
                offstage: _visibility,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 16.0),
                  child: Column(
                    children: <Widget>[
                      FlatButton(
                        onPressed: () {
                          _changeVisibility(false);
                        },
                        child: Text("Visible"),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 16.0),
                    child: Column(
                      children: <Widget>[
                        FlatButton(
                          onPressed: () {
                            _changeVisibility(true);
                          },
                          child: Text("Hide"),
                        )
                      ],
                    ),
                )
              ],
            )
          ],
      )
    );
  }
}
