import 'package:flutter/material.dart';

class MicroDust extends StatefulWidget {
  @override
  _MicroDustState createState() => _MicroDustState();
}

class _MicroDustState extends State<MicroDust> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                '현재 위치 미세먼지',
                style: TextStyle(fontSize: 30),
              ),
              SizedBox(
                height: 16,
              ),
              Card(
                child: Column(children: <Widget>[
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Text('얼굴사진'),
                        Text(
                          '80',
                          style: TextStyle(fontSize: 40),
                        ),
                        Text(
                          '보통',
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                    color: Colors.yellow,
                    padding: const EdgeInsets.all(8.0),
                  ),
                  Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Text('이미지'),
                              SizedBox(
                                width: 16,
                              ),
                              Text(
                                '11도',
                                style: TextStyle(fontSize: 16),
                              ),
                            ],
                          ),
                          Text('습도 100%'),
                          Text('풍속 5.7m/s'),
                        ],
                      )),
                ]),
              ),
              SizedBox(
                height: 16,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: RaisedButton(
                  padding: const EdgeInsets.symmetric(
                      vertical: 15.0, horizontal: 50),
                  color: Colors.orange,
                  child: Icon(Icons.refresh, color: Colors.white),
                  onPressed: () {},
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
