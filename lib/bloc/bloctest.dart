import 'package:flutter/material.dart';
import 'package:flutter_bloc/bloc/CounterBloc.dart';

final counterBlock = CounterBloc();

class BlocTest extends StatefulWidget {
  @override
  _BlocTestState createState() => _BlocTestState();
}

class _BlocTestState extends State<BlocTest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sample code'),
      ),
      body: Center(
        //Stream Observer
        child: StreamBuilder<int>(
            stream: counterBlock.count$, //Observer
            builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Text('${snapshot.data}', style: TextStyle(fontSize: 80));
          } else {
            return CircularProgressIndicator();
          }
        }),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 50.0,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => setState(() {
          counterBlock.addCounter();
        }),
        tooltip: 'Increment Counter',
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation:
      FloatingActionButtonLocation.centerDocked,
    );
  }
}
