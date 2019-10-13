import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_test/catalog.dart';

import 'bloc/cart_bloc.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _cartBloc = CartBloc();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      bloc: _cartBloc,
      child: BlocBuilder(
          bloc: _cartBloc,
          builder: (BuildContext context, List state) {
            return Scaffold(
                appBar: AppBar(
                  title: Text('WelCome'),
                ),
                body: Center(
                    child: RaisedButton(
                  child: Text('Enter'),
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Catalog()));
                  },
                )));
          }),
    );
  }
}
