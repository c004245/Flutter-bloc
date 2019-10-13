import 'package:flutter/material.dart';
import 'package:flutter_bloc/bloc/air_bloc.dart';
import 'package:flutter_bloc/model/AirResult.dart';

final airBloc = AirBloc();

class MicroDust extends StatefulWidget {
  @override
  _MicroDustState createState() => _MicroDustState();
}

class _MicroDustState extends State<MicroDust> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: StreamBuilder<AirResult>(
          stream: airBloc.airResult,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return buildBody(snapshot.data);
            } else {
              return CircularProgressIndicator();
            }
          }
        ),
      ),
    );
  }

  Widget buildBody(AirResult result) {
    return Padding(
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
                          '${result.data.current.pollution.aqius}',
                          style: TextStyle(fontSize: 40),
                        ),
                        Text(
                          getString(result),
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                    color: getColor(result),
                    padding: const EdgeInsets.all(8.0),
                  ),
                  Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Image.network('https://airvisual.com/images/${result.data.current.weather.ic}.png',
                              width: 32,
                              height: 32,),

                              SizedBox(
                                width: 16,
                              ),
                              Text(
                                '${result.data.current.weather.tp}',
                                style: TextStyle(fontSize: 16),
                              ),
                            ],
                          ),
                          Text('습도 ${result.data.current.weather.hu}%'),
                          Text('풍속 ${result.data.current.weather.ws}m/s'),
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
                  onPressed: () {
                    airBloc.fetch();
                  },
                ),
              )
            ],
          ),
        ),
      );
  }

  Color getColor(AirResult result) {
    if (result.data.current.pollution.aqius <= 50) {
      return Colors.greenAccent;
    } else if (result.data.current.pollution.aqius <= 100) {
      return Colors.yellow;
    } else if (result.data.current.pollution.aqius <= 150) {
      return Colors.orange;
    } else {
      return Colors.red;
    }
  }

  String getString(AirResult result) {
    if (result.data.current.pollution.aqius <= 50) {
      return "좋음";
    } else if (result.data.current.pollution.aqius <= 100) {
      return "보통";
    } else if (result.data.current.pollution.aqius <= 150) {
      return "나쁨";
    } else {
      return "최악";
    }
  }
}
