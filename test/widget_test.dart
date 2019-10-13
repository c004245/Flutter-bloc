// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_bloc/main.dart';
import 'package:http/http.dart' as http;

void main() {
  test('http 통신 테스트', () async {
    var response = await http.get('http://api.airvisual.com/v2/nearest_city?key=e25987c8-4c76-4335-9369-67554acbc122');

    expect(response.statusCode, 200);
  });
}
