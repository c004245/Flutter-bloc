import 'dart:convert';
import 'package:flutter_bloc_test/model/AirResult.dart';
import 'package:http/http.dart' as http;
import 'package:rxdart/rxdart.dart';

class AirBloc {

  //last value reactive
  final _airSubject = BehaviorSubject<AirResult>();

  AirBloc() {
    fetch();
  }

  Future<AirResult> fetchData() async {
    var response = await http.get(
        'http://api.airvisual.com/v2/nearest_city?key=e25987c8-4c76-4335-9369-67554acbc122');

    AirResult result = AirResult.fromJson(json.decode(response.body));
    return result;
  }


  void fetch() async {
    var airResult = await fetchData();
    _airSubject.add(airResult);
  }

  Stream<AirResult> get airResult => _airSubject.stream;
}
