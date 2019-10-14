import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_test/catalog.dart';

import 'bloc/cart_bloc.dart';
import 'bloc/cart_provider.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _cartBloc = CartBloc();

  @override
  Widget build(BuildContext context) {
    return CartProvider(
        child: Scaffold(
        appBar: AppBar(
          title: Text('WelCome'),
        ),
        body: Center(
            child: RaisedButton(
          child: Text('Enter'),
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => Catalog()));
          },
        ))));
  }
}
